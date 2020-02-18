package app.dao.entity;

import java.util.Objects;

public class Institution {
    private String Login;
    private String Password;
    private String Name_of_institution;
    private String Head_of_institution;
    private String Phone_number;

    public Institution(String login, String password) {
            }

    public Institution(String login, String password, String name_of_institution, String head_of_institution, String phone_number) {
        this.Login = login;
        this.Password = password;
        this.Name_of_institution = name_of_institution;
        this.Head_of_institution = head_of_institution;
        this.Phone_number = phone_number;
    }

    public String getLogin() {
        return Login;
    }

    public void setLogin(String login) {
        Login = login;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getName_of_institution() {
        return Name_of_institution;
    }

    public void setName_of_institution(String name_of_institution) {
        Name_of_institution = name_of_institution;
    }

    public String getHead_of_institution() {
        return Head_of_institution;
    }

    public void setHead_of_institution(String head_of_institution) {
        Head_of_institution = head_of_institution;
    }

    public String getPhone_number() {
        return Phone_number;
    }

    public void setPhone_number(String phone_number) {
        Phone_number = phone_number;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Institution)) return false;
        Institution that = (Institution) o;
        return Objects.equals(Login, that.Login) &&
                Objects.equals(Password, that.Password) &&
                Objects.equals(Name_of_institution, that.Name_of_institution) &&
                Objects.equals(Head_of_institution, that.Head_of_institution) &&
                Objects.equals(Phone_number, that.Phone_number);
    }

    @Override
    public int hashCode() {
        return Objects.hash(Login, Password, Name_of_institution, Head_of_institution, Phone_number);
    }

    @Override
    public String toString() {
        return "Institution{" +
                "Login='" + Login + '\'' +
                ", Password='" + Password + '\'' +
                ", Name_of_institution='" + Name_of_institution + '\'' +
                ", Head_of_institution='" + Head_of_institution + '\'' +
                ", Phone_number='" + Phone_number + '\'' +
                '}';
    }
}





