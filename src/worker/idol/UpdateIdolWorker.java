package worker.idol;

import javax.swing.JOptionPane;
import javax.swing.SwingWorker;
import api.IdolApiClient;
import model.Idol;
import view.IdolFrame;

public class UpdateIdolWorker extends SwingWorker<Void, Void> {
    private final IdolFrame frame;
    private final IdolApiClient idolApiClient;
    private final Idol idol;

    public UpdateIdolWorker(IdolFrame frame, IdolApiClient idolApiClient, Idol idol) {
        this.frame = frame;
        this.idolApiClient = idolApiClient;
        this.idol = idol;
    }

    @Override
    protected Void doInBackground() throws Exception {
        idolApiClient.update(idol);
        return null;
    }

    @Override
    protected void done() {
        try {
            get();
            JOptionPane.showMessageDialog(frame, "Idol berhasil diperbarui", "Sukses", JOptionPane.INFORMATION_MESSAGE);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(frame, "Gagal memperbarui: " + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
}