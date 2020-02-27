package app.dao.entity;

import java.util.Objects;

public class Building {
    private String Login;
    private String Name_of_institution;
    private String Locations;
    private String Settlement;
    private String Region;
    private String Functional_purpose;
    private String Year_of_commissioning;
    private int Number_of_floors;
    private String Photo_main_path;
    private int Id_number;

public Building () {}

    public Building(String login, String name_of_institution, String locations, String settlement, String region, String functional_purpose, String year_of_commissioning, int number_of_floors, String photo_main_path, int id_number) {
        this.Login = login;
        this.Name_of_institution = name_of_institution;
        this.Locations = locations;
        this.Settlement = settlement;
        this.Region = region;
        this.Functional_purpose = functional_purpose;
        this.Year_of_commissioning = year_of_commissioning;
        this.Number_of_floors = number_of_floors;
        this.Photo_main_path = photo_main_path;
        this.Id_number = id_number;
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

    public String getLocations() {
        return Locations;
    }

    public void setLocations(String locations) {
        Locations = locations;
    }

    public String getSettlement() {
        return Settlement;
    }

    public void setSettlement(String settlement) {
        Settlement = settlement;
    }

    public String getRegion() {
        return Region;
    }

    public void setRegion(String region) {
        Region = region;
    }

    public String getFunctional_purpose() {
        return Functional_purpose;
    }

    public void setFunctional_purpose(String functional_purpose) {
        Functional_purpose = functional_purpose;
    }

    public String getYear_of_commissioning() {
        return Year_of_commissioning;
    }

    public void setYear_of_commissioning(String year_of_commissioning) {
        Year_of_commissioning = year_of_commissioning;
    }

    public int getNumber_of_floors() {
        return Number_of_floors;
    }

    public void setNumber_of_floors(int number_of_floors) {
        Number_of_floors = number_of_floors;
    }

    public String getPhoto_main_path() {
        return Photo_main_path;
    }

    public void setPhoto_main_path(String photo_main_path) {
        Photo_main_path = photo_main_path;
    }

    public int getId_number() {
        return Id_number;
    }

    public void setId_number(int id_number) {
        Id_number = id_number;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Building)) return false;
        Building building = (Building) o;
        return Number_of_floors == building.Number_of_floors &&
                Id_number == building.Id_number &&
                Objects.equals(Login, building.Login) &&
                Objects.equals(Name_of_institution, building.Name_of_institution) &&
                Objects.equals(Locations, building.Locations) &&
                Objects.equals(Settlement, building.Settlement) &&
                Objects.equals(Region, building.Region) &&
                Objects.equals(Functional_purpose, building.Functional_purpose) &&
                Objects.equals(Year_of_commissioning, building.Year_of_commissioning) &&
                Objects.equals(Photo_main_path, building.Photo_main_path);
    }

    @Override
    public int hashCode() {
        return Objects.hash(Login, Name_of_institution, Locations, Settlement, Region, Functional_purpose, Year_of_commissioning, Number_of_floors, Photo_main_path, Id_number);
    }

    @Override
    public String toString() {
        return "Building{" +
                "Login='" + Login + '\'' +
                ", Name_of_institution='" + Name_of_institution + '\'' +
                ", Locations='" + Locations + '\'' +
                ", Settlement='" + Settlement + '\'' +
                ", Region='" + Region + '\'' +
                ", Functional_purpose='" + Functional_purpose + '\'' +
                ", Year_of_commissioning='" + Year_of_commissioning + '\'' +
                ", Number_of_floors=" + Number_of_floors +
                ", Photo_main_path='" + Photo_main_path + '\'' +
                ", Id_number=" + Id_number +
                '}';
    }
}
