package worker.idol;

import javax.swing.JOptionPane;
import javax.swing.SwingWorker;
import api.IdolApiClient;
import model.Idol;
import view.IdolFrame;

public class SaveIdolWorker extends SwingWorker<Void, Void> {
    private final IdolFrame frame;
    private final IdolApiClient idolApiClient;
    private final Idol idol;

    public SaveIdolWorker(IdolFrame frame, IdolApiClient idolApiClient, Idol idol) {
        this.frame = frame;
        this.idolApiClient = idolApiClient;
        this.idol = idol;
        
        // Set progress bar
        frame.getProgressBar().setIndeterminate(true);
        frame.getProgressBar().setString("Saving idol...");
    }

    @Override
    protected Void doInBackground() throws Exception {
        idolApiClient.create(idol);
        return null;
    }

    @Override
    protected void done() {
        frame.getProgressBar().setIndeterminate(false);
        try {
            get();
            frame.getProgressBar().setString("Idol saved successfully");
            JOptionPane.showMessageDialog(frame, "Idol berhasil disimpan", "Sukses", JOptionPane.INFORMATION_MESSAGE);
        } catch (Exception e) {
            frame.getProgressBar().setString("Failed to save idol");
            JOptionPane.showMessageDialog(frame, "Gagal menyimpan: " + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
}