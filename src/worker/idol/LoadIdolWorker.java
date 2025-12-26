package worker.idol;

import java.util.List;
import javax.swing.SwingUtilities;
import javax.swing.SwingWorker;
import api.IdolApiClient;
import model.Idol;
import view.IdolFrame;

public class LoadIdolWorker extends SwingWorker<List<Idol>, Void> {
    private final IdolFrame frame;
    private final IdolApiClient idolApiClient;

    public LoadIdolWorker(IdolFrame frame, IdolApiClient idolApiClient) {
        this.frame = frame;
        this.idolApiClient = idolApiClient;
        
        // Set progress bar loading
        SwingUtilities.invokeLater(() -> {
            frame.getProgressBar().setIndeterminate(true);
            frame.getProgressBar().setString("Loading data...");
        });
    }

    @Override
    protected List<Idol> doInBackground() throws Exception {
        return idolApiClient.findAll();
    }

    @Override
    protected void done() {
        SwingUtilities.invokeLater(() -> {
            frame.getProgressBar().setIndeterminate(false);
            
            try {
                List<Idol> result = get();
                
                // Update table dengan data
                frame.getIdolTableModel().setIdolList(result);
                
                // Update total records label
                frame.getTotalRecordsLabel().setText(result.size() + " Records");
                
                // Update progress bar text
                frame.getProgressBar().setString("Loaded " + result.size() + " records");
                
                System.out.println("✅ Data loaded and displayed: " + result.size() + " records");
                
            } catch (Exception e) {
                e.printStackTrace();
                frame.getProgressBar().setString("Error loading data");
                frame.getTotalRecordsLabel().setText("Error");
            }
        });
    }
}