package model;

import java.sql.Date;
import com.google.gson.annotations.SerializedName;

public class Idol {
    @SerializedName("idol_id")
    private int idIdol;
    
    @SerializedName("idol_name")
    private String name; // JANGAN idName, PAKAI name
    
    @SerializedName("birth_date")
    private Date birthDate;
    
    @SerializedName("country")
    private String country;
    
    @SerializedName("kpop_group")
    private String kpopGroup;
    
    @SerializedName("position")
    private String position;
    
    @SerializedName("height_cm")
    private int heightCm;
    
    @SerializedName("debut_year")
    private int debutYear;
    
    // Constructors
    public Idol() {}
    
    // Getters & Setters
    public int getIdIdol() { return idIdol; }
    public void setIdIdol(int idIdol) { this.idIdol = idIdol; }
    
    public String getName() { return name; } // getName() bukan getIdName()
    public void setName(String name) { this.name = name; }
    
    public Date getBirthDate() { return birthDate; }
    public void setBirthDate(Date birthDate) { this.birthDate = birthDate; }
    
    public String getCountry() { return country; }
    public void setCountry(String country) { this.country = country; }
    
    public String getKpopGroup() { return kpopGroup; }
    public void setKpopGroup(String kpopGroup) { this.kpopGroup = kpopGroup; }
    
    public String getPosition() { return position; }
    public void setPosition(String position) { this.position = position; }
    
    public int getHeightCm() { return heightCm; }
    public void setHeightCm(int heightCm) { this.heightCm = heightCm; }
    
    public int getDebutYear() { return debutYear; }
    public void setDebutYear(int debutYear) { this.debutYear = debutYear; }
}