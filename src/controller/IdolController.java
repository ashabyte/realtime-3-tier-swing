package controller;

import java.util.ArrayList;
import java.util.List;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.JOptionPane;
import javax.swing.SwingWorker;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;

import api.IdolApiClient;
import model.Idol;
import view.IdolDialog;
import view.IdolFrame;
import worker.idol.DeleteIdolWorker;
import worker.idol.LoadIdolWorker;
import worker.idol.SaveIdolWorker;
import worker.idol.UpdateIdolWorker;

public class IdolController {
    private final IdolFrame frame;
    private final IdolApiClient idolApiClient = new IdolApiClient();

    private List<Idol> allIdols = new ArrayList<>();
    private List<Idol> displayedIdols = new ArrayList<>();

    public IdolController(IdolFrame frame) {
        this.frame = frame;
        setupEventListeners();
        loadAllIdols();
    }

    private void setupEventListeners() {
        frame.getAddButton().addActionListener(e -> openIdolDialog(null));
        frame.getRefreshButton().addActionListener(e -> loadAllIdols());
        frame.getDeleteButton().addActionListener(e -> deleteSelectedIdol());
        frame.getIdolTable().addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                if (e.getClickCount() == 2) {
                    int selectedRow = frame.getIdolTable().getSelectedRow();
                    if (selectedRow >= 0) {
                        openIdolDialog(displayedIdols.get(selectedRow));
                    }
                }
            }
        });
        frame.getSearchField().getDocument().addDocumentListener(new DocumentListener() {
            @Override
            public void insertUpdate(DocumentEvent e) { filter(); }
            @Override
            public void removeUpdate(DocumentEvent e) { filter(); }
            @Override
            public void changedUpdate(DocumentEvent e) { filter(); }
            private void filter() {
                String keyword = frame.getSearchField().getText().toLowerCase().trim();
                displayedIdols = new ArrayList<>();
                for (Idol idol : allIdols) {
                    if (idol.getName().toLowerCase().contains(keyword) ||
                        (idol.getCountry() != null && idol.getCountry().toLowerCase().contains(keyword)) ||
                        (idol.getKpopGroup() != null && idol.getKpopGroup().toLowerCase().contains(keyword))) {
                        displayedIdols.add(idol);
                    }
                }
                frame.getIdolTableModel().setIdolList(displayedIdols);
                updateTotalRecordsLabel();
            }
        });
    }

    private void openIdolDialog(Idol idolToEdit) {
        IdolDialog dialog;
        if (idolToEdit == null) {
            dialog = new IdolDialog(frame);
        } else {
            dialog = new IdolDialog(frame, idolToEdit);
        }
        dialog.getSaveButton().addActionListener(e -> {
            Idol idol = dialog.getIdol();
            SwingWorker<Void, Void> worker;
            if (idolToEdit == null) {
                worker = new SaveIdolWorker(frame, idolApiClient, idol);
            } else {
                idol.setIdIdol(idolToEdit.getIdIdol());
                worker = new UpdateIdolWorker(frame, idolApiClient, idol);
            }
            worker.addPropertyChangeListener(evt -> {
                if (SwingWorker.StateValue.DONE.equals(evt.getNewValue())) {
                    dialog.dispose();
                    loadAllIdols();
                }
            });
            worker.execute();
        });
        dialog.setVisible(true);
    }

    private void deleteSelectedIdol() {
        int selectedRow = frame.getIdolTable().getSelectedRow();
        if (selectedRow < 0) {
            JOptionPane.showMessageDialog(frame, "Pilih data yang akan dihapus.");
            return;
        }
        Idol idol = displayedIdols.get(selectedRow);
        int confirm = JOptionPane.showConfirmDialog(frame,
                "Hapus idol: " + idol.getName() + "?",
                "Konfirmasi Hapus", JOptionPane.YES_NO_OPTION, JOptionPane.WARNING_MESSAGE);
        if (confirm == JOptionPane.YES_OPTION) {
            DeleteIdolWorker worker = new DeleteIdolWorker(frame, idolApiClient, idol);
            worker.addPropertyChangeListener(evt -> {
                if (SwingWorker.StateValue.DONE.equals(evt.getNewValue())) {
                    loadAllIdols();
                }
            });
            worker.execute();
        }
    }

    private void loadAllIdols() {
        // HANYA EXECUTE WORKER, DATA AKAN DIHANDLE DI WORKER
        LoadIdolWorker worker = new LoadIdolWorker(frame, idolApiClient);
        worker.addPropertyChangeListener(evt -> {
            if (SwingWorker.StateValue.DONE.equals(evt.getNewValue())) {
                try {
                    // Data sudah diupdate oleh worker, tinggal sync local lists
                    allIdols = worker.get();
                    displayedIdols = new ArrayList<>(allIdols);
                    updateTotalRecordsLabel();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        });
        worker.execute();
    }

    private void updateTotalRecordsLabel() {
        frame.getTotalRecordsLabel().setText(displayedIdols.size() + " Records");
    }
}