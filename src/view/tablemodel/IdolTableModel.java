package view.tablemodel;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import javax.swing.table.AbstractTableModel;
import model.Idol;

public class IdolTableModel extends AbstractTableModel {
    private List<Idol> idolList = new ArrayList<>();
    private final String[] columnNames = { 
        "ID", "Nama Idol", "Tanggal Lahir", "Asal Negara", 
        "Asal Group", "Posisi di Group", "Tinggi Badan", "Tahun Debut" 
    };
    private final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    
    public void setIdolList(List<Idol> idolList) {
        this.idolList = idolList;
        fireTableDataChanged();
    }

    public Idol getIdolAt(int rowIndex) {
        return idolList.get(rowIndex);
    }

    @Override
    public int getRowCount() {
        return idolList.size();
    }

    @Override
    public int getColumnCount() {
        return columnNames.length;
    }

    @Override
    public String getColumnName(int column) {
        return columnNames[column];
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Idol idol = idolList.get(rowIndex);
        return switch (columnIndex) {
            case 0 -> idol.getIdIdol();
            case 1 -> idol.getName();
            case 2 -> idol.getBirthDate() != null ? dateFormat.format(idol.getBirthDate()) : "";
            case 3 -> idol.getCountry();
            case 4 -> idol.getKpopGroup();
            case 5 -> idol.getPosition();
            case 6 -> idol.getHeightCm();
            case 7 -> idol.getDebutYear();
            default -> null;
        };
    }
}