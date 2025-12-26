package view;

import java.awt.Dimension;
import java.awt.Font;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JProgressBar;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.UIManager;
import net.miginfocom.swing.MigLayout;
import view.tablemodel.IdolTableModel;

public class IdolFrame extends JFrame {
    private final JTextField searchField = new JTextField(30);
    private final JButton addButton = new JButton("Add New");
    private final JButton refreshButton = new JButton("Refresh");
    private final JButton deleteButton = new JButton("Delete");
    private final JLabel totalRecordsLabel = new JLabel("0 Records");
    private final JProgressBar progressBar = new JProgressBar(); // TAMBAH INI

    private final JTable idolTable = new JTable();
    private final IdolTableModel idolTableModel = new IdolTableModel();

    public IdolFrame() {
        initializeUI();        
    }

    private void initializeUI(){
        setTitle("EditCore - Management Idol");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(new MigLayout("fill, insets 20", "[grow]", "[]10[]10[grow]10[]10[]"));

        idolTable.setModel(idolTableModel);
        progressBar.setStringPainted(true); // TAMBAH INI
        progressBar.setString("Ready"); // TAMBAH INI

        add(new JLabel("List Idol"), "wrap, span 2");
        add(createSearchPanel(), "growx");
        add(createButtonPanel(), "wrap, right");
        add(new JScrollPane(idolTable), "grow, wrap, span 2");
        add(progressBar, "growx, h 20!, wrap, span 2"); // TAMBAH BARIS INI
        add(totalRecordsLabel, "right, span 2");

        pack();
        setMinimumSize(new Dimension(1000, 600));
        setLocationRelativeTo(null);
    }

    private JPanel createSearchPanel() {
        JPanel panel = new JPanel(new MigLayout(""));
        panel.add(new JLabel("Search:"));
        panel.add(searchField, "growx");
        return panel;
    }

    private JPanel createButtonPanel() {
        JPanel panel = new JPanel(new MigLayout("right"));
        
        addButton.setBackground(UIManager.getColor("Button.default.background"));
        addButton.setForeground(UIManager.getColor("Button.default.foreground"));
        addButton.setFont(addButton.getFont().deriveFont(Font.BOLD));
        
        panel.add(deleteButton);
        panel.add(refreshButton);
        panel.add(addButton);
        
        return panel;
    }

    // GETTERS
    public JTextField getSearchField() { return searchField; }
    public JButton getAddButton() { return addButton; }
    public JButton getRefreshButton() { return refreshButton; }
    public JButton getDeleteButton() { return deleteButton; }
    public JTable getIdolTable() { return idolTable; }
    public IdolTableModel getIdolTableModel() { return idolTableModel; }
    public JLabel getTotalRecordsLabel() { return totalRecordsLabel; }
    public JProgressBar getProgressBar() { return progressBar; } // TAMBAH INI
}