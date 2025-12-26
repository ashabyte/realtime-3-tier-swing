package view;

import java.awt.Dimension;
import java.awt.Font;
import java.text.SimpleDateFormat;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.UIManager;

import model.Idol;
import net.miginfocom.swing.MigLayout;

public class IdolDialog extends JDialog {
    private final JTextField nameField = new JTextField(25);
    private final JTextField birthdateField = new JTextField(25);
    private final JTextField countryField = new JTextField(25);
    private final JTextField groupField = new JTextField(25);
    private final JTextField positionField = new JTextField(25);
    private final JTextField heightField = new JTextField(25);
    private final JTextField debutYearField = new JTextField(25);
    
    private final JButton saveButton = new JButton("Save");
    private final JButton cancelButton = new JButton("Cancel");

    private Idol idol;

    public IdolDialog(JFrame owner) {
        super(owner, "Add New Idol", true);
        this.idol = new Idol();
        setupComponents();
    }

    public IdolDialog(JFrame owner, Idol idolToEdit) {
        super(owner, "Edit Idol", true);
        this.idol = idolToEdit;
        setupComponents();

        // Set values
        nameField.setText(idolToEdit.getName());
        
        if (idolToEdit.getBirthDate() != null) {
            birthdateField.setText(new SimpleDateFormat("yyyy-MM-dd").format(idolToEdit.getBirthDate()));
        }
        
        countryField.setText(idolToEdit.getCountry());
        groupField.setText(idolToEdit.getKpopGroup());
        positionField.setText(idolToEdit.getPosition());
        heightField.setText(String.valueOf(idolToEdit.getHeightCm()));
        debutYearField.setText(String.valueOf(idolToEdit.getDebutYear()));
    }

    private void setupComponents() {
        setLayout(new MigLayout("fill, insets 30", "[right]20[grow]"));
        
        add(new JLabel("Nama Idol"), "");
        add(nameField, "growx, wrap");
        
        add(new JLabel("Tanggal Lahir (yyyy-MM-dd)"), "");
        add(birthdateField, "growx, wrap");
        
        add(new JLabel("Asal Negara"), "");
        add(countryField, "growx, wrap");
        
        add(new JLabel("Asal Group"), "");
        add(groupField, "growx, wrap");
        
        add(new JLabel("Posisi di Group"), "");
        add(positionField, "growx, wrap");
        
        add(new JLabel("Tinggi Badan (cm)"), "");
        add(heightField, "growx, wrap");
        
        add(new JLabel("Tahun Debut"), "");
        add(debutYearField, "growx, wrap");

        saveButton.setBackground(UIManager.getColor("Button.default.background"));
        saveButton.setForeground(UIManager.getColor("Button.default.foreground"));
        saveButton.setFont(saveButton.getFont().deriveFont(Font.BOLD));

        JPanel buttonPanel = new JPanel(new MigLayout("", "[]10[]"));
        cancelButton.addActionListener(e -> dispose());
        buttonPanel.add(cancelButton);
        buttonPanel.add(saveButton);
        add(buttonPanel, "span, right");

        pack();
        setMinimumSize(new Dimension(500, 400));
        setLocationRelativeTo(getOwner());
    }

    public JButton getSaveButton() {
        return saveButton;
    }

    public Idol getIdol() {
        idol.setName(nameField.getText().trim());
        
        // Parse date
        try {
            String dateStr = birthdateField.getText().trim();
            if (!dateStr.isEmpty()) {
                java.util.Date utilDate = new SimpleDateFormat("yyyy-MM-dd").parse(dateStr);
                idol.setBirthDate(new java.sql.Date(utilDate.getTime()));
            } else {
                idol.setBirthDate(null);
            }
        } catch (Exception e) {
            idol.setBirthDate(null);
        }
        
        idol.setCountry(countryField.getText().trim());
        idol.setKpopGroup(groupField.getText().trim());
        idol.setPosition(positionField.getText().trim());
        
        try {
            idol.setHeightCm(Integer.parseInt(heightField.getText().trim()));
        } catch (NumberFormatException e) {
            idol.setHeightCm(0);
        }
        
        try {
            idol.setDebutYear(Integer.parseInt(debutYearField.getText().trim()));
        } catch (NumberFormatException e) {
            idol.setDebutYear(0);
        }
        
        return idol;
    }
}