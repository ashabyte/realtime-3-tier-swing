import javax.swing.SwingUtilities;
import javax.swing.UIManager;
import com.formdev.flatlaf.intellijthemes.FlatLightFlatIJTheme;
import controller.IdolController;
import view.IdolFrame;

public class GroupKpopApp {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(new FlatLightFlatIJTheme());
        } catch (Exception ex) {
            System.err.println("Gagal mengatur tema FlatLaf");
        }

        SwingUtilities.invokeLater(() -> {
            IdolFrame frame = new IdolFrame();
            new IdolController(frame);
            frame.setVisible(true);
        });
    }
}