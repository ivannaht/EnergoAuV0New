package app.dao.entity;

import java.sql.Date;
import java.util.Objects;

public class MainIndicators {
    private String Login;
    private String Name_of_institution;
    private double Heated_area;
    private double Heated_volume;
    private double Specific_energy_consumption_kWh_for_m3;
    private double Specific_consumption_of_primery_energy;
    private double Specific_CO2_emissions;
    private String Energy_efficiency_class;
    private long Image_class;
    private Date Date_of_data_entry;

public MainIndicators () {}

    public MainIndicators(String login, String name_of_institution, double heated_area, double heated_volume, double specific_energy_consumption_kWh_for_m3, double specific_consumption_of_primery_energy, double specific_CO2_emissions, String energy_efficiency_class, long image_class, Date date_of_data_entry) {
        this.Login = login;
        this.Name_of_institution = name_of_institution;
        this.Heated_area = heated_area;
        this.Heated_volume = heated_volume;
        this.Specific_energy_consumption_kWh_for_m3 = specific_energy_consumption_kWh_for_m3;
        this.Specific_consumption_of_primery_energy = specific_consumption_of_primery_energy;
        this.Specific_CO2_emissions = specific_CO2_emissions;
        this.Energy_efficiency_class = energy_efficiency_class;
        this.Image_class = image_class;
        this.Date_of_data_entry = date_of_data_entry;
    }

    public String getLogin() {
        return Login;
    }

    public void setLogin(String login) {
        Login = login;
    }

    public String getName_of_institution() {
        return Name_of_institution;
    }

    public void setName_of_institution(String name_of_institution) {
        Name_of_institution = name_of_institution;
    }

    public double getHeated_area() {
        return Heated_area;
    }

    public void setHeated_area(double heated_area) {
        Heated_area = heated_area;
    }

    public double getHeated_volume() {
        return Heated_volume;
    }

    public void setHeated_volume(double heated_volume) {
        Heated_volume = heated_volume;
    }

    public double getSpecific_energy_consumption_kWh_for_m3() {
        return Specific_energy_consumption_kWh_for_m3;
    }

    public void setSpecific_energy_consumption_kWh_for_m3(double specific_energy_consumption_kWh_for_m3) {
        Specific_energy_consumption_kWh_for_m3 = specific_energy_consumption_kWh_for_m3;
    }

    public double getSpecific_consumption_of_primery_energy() {
        return Specific_consumption_of_primery_energy;
    }

    public void setSpecific_consumption_of_primery_energy(double specific_consumption_of_primery_energy) {
        Specific_consumption_of_primery_energy = specific_consumption_of_primery_energy;
    }

    public double getSpecific_CO2_emissions() {
        return Specific_CO2_emissions;
    }

    public void setSpecific_CO2_emissions(double specific_CO2_emissions) {
        Specific_CO2_emissions = specific_CO2_emissions;
    }

    public String getEnergy_efficiency_class() {
        return Energy_efficiency_class;
    }

    public void setEnergy_efficiency_class(String energy_efficiency_class) {
        Energy_efficiency_class = energy_efficiency_class;
    }

    public long getImage_class() {
        return Image_class;
    }

    public void setImage_class(long image_class) {
        Image_class = image_class;
    }

    public Date getDate_of_data_entry() {
        return Date_of_data_entry;
    }

    public void setDate_of_data_entry(Date date_of_data_entry) {
        Date_of_data_entry = date_of_data_entry;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof MainIndicators)) return false;
        MainIndicators that = (MainIndicators) o;
        return Double.compare(that.Heated_area, Heated_area) == 0 &&
                Double.compare(that.Heated_volume, Heated_volume) == 0 &&
                Double.compare(that.Specific_energy_consumption_kWh_for_m3, Specific_energy_consumption_kWh_for_m3) == 0 &&
                Double.compare(that.Specific_consumption_of_primery_energy, Specific_consumption_of_primery_energy) == 0 &&
                Double.compare(that.Specific_CO2_emissions, Specific_CO2_emissions) == 0 &&
                Energy_efficiency_class == that.Energy_efficiency_class &&
                Image_class == that.Image_class &&
                Objects.equals(Login, that.Login) &&
                Objects.equals(Name_of_institution, that.Name_of_institution) &&
                Objects.equals(Date_of_data_entry, that.Date_of_data_entry);
    }

    @Override
    public int hashCode() {
        return Objects.hash(Login, Name_of_institution, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Energy_efficiency_class, Image_class, Date_of_data_entry);
    }

    @Override
    public String toString() {
        return "MainIndicators{" +
                "Login='" + Login + '\'' +
                ", Name_of_institution='" + Name_of_institution + '\'' +
                ", Heated_area=" + Heated_area +
                ", Heated_volume=" + Heated_volume +
                ", Specific_energy_consumption_kWh_for_m3=" + Specific_energy_consumption_kWh_for_m3 +
                ", Specific_consumption_of_primery_energy=" + Specific_consumption_of_primery_energy +
                ", Specific_CO2_emissions=" + Specific_CO2_emissions +
                ", Energy_efficiency_class=" + Energy_efficiency_class +
                ", Image_class=" + Image_class +
                ", Date_of_data_entry='" + Date_of_data_entry + '\'' +
                '}';
    }
}
