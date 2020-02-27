package app.controller;
import app.dao.entity.Building;
import app.dao.entity.Institution;
import app.dao.entity.MainIndicators;
import app.dao.repository.BuildingRepository;
import app.dao.repository.InstitutionRepository;
import app.dao.repository.MainIndicatorsRepository;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

@WebServlet("/Sign")
public class SignServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");

        String Login = req.getParameter("Login");
        String Password = req.getParameter("Password");
        System.out.println(Login + Password);

        //from table institution
        InstitutionRepository institutionRepository = new InstitutionRepository();
        Institution institution = institutionRepository.getByLoginByPassword(Login, Password);
        if (institution != null) {
            System.out.println("Name_of_institution: " + institution.getName_of_institution());

            String LoginUser = institution.getLogin();
            String PasswordUser = institution.getPassword();
            String Name_of_institutionUser = institution.getName_of_institution();
            String Head_of_institutionUser = institution.getHead_of_institution();
            String Phone_numberUser = institution.getPhone_number();
            System.out.println(LoginUser + PasswordUser + Name_of_institutionUser + Head_of_institutionUser + Phone_numberUser);
            req.setAttribute("LoginUser", LoginUser);
            req.setAttribute("PasswordUser", PasswordUser);
            req.setAttribute("Name_of_institutionUser", Name_of_institutionUser);
            req.setAttribute("Head_of_institutionUser", Head_of_institutionUser);
            req.setAttribute("Phone_numberUser", Phone_numberUser);

        //from table dbilding_parameters
        BuildingRepository buildingRepository = new BuildingRepository();
        Building building = buildingRepository.getByLogin(Login);
            String LocationsUser = building.getLocations();
            String SettlementUser = building.getSettlement();
            String RegionUser = building.getRegion();
            String Functional_purposeUser = building.getFunctional_purpose();
            String Year_of_commissioningUser = building.getYear_of_commissioning();
            int Number_of_floorsUser = building.getNumber_of_floors();
            String Photo_main_pathUser = building.getPhoto_main_path();
            int Id_numberUser = building.getId_number();

            req.setAttribute("LocationsUser", LocationsUser);
            req.setAttribute("SettlementUser", SettlementUser);
            req.setAttribute("RegionUser", RegionUser);
            req.setAttribute("Functional_purposeUser",Functional_purposeUser);
            req.setAttribute("Year_of_commissioningUser", Year_of_commissioningUser);
            req.setAttribute("Number_of_floorsUser", Number_of_floorsUser);
            req.setAttribute("Photo_main_pathUser", Photo_main_pathUser);
            req.setAttribute("Id_numberUser", Id_numberUser);

            //from table main_indicators_of_energy_efficiency
            MainIndicatorsRepository mainIndicatorsRepository = new MainIndicatorsRepository();
            MainIndicators mainIndicators = mainIndicatorsRepository.getByLogin(Login);
            double Heated_areaUser = mainIndicators.getHeated_area();
            double  Heated_volumeUser = mainIndicators.getHeated_volume();
            double  Specific_energy_consumption_kWh_for_m3User = mainIndicators.getSpecific_energy_consumption_kWh_for_m3();
            double  Specific_consumption_of_primery_energyUser = mainIndicators.getSpecific_consumption_of_primery_energy();
            double Specific_CO2_emissionsUser = mainIndicators.getSpecific_CO2_emissions();
            String Energy_efficiency_classUser = mainIndicators.getEnergy_efficiency_class();
            long Image_classUser = mainIndicators.getImage_class();
            Date Date_of_data_entryUser = mainIndicators.getDate_of_data_entry();

            req.setAttribute("Heated_areaUser", Heated_areaUser);
            req.setAttribute("Heated_volumeUser", Heated_volumeUser);
            req.setAttribute("Specific_energy_consumption_kWh_for_m3User", Specific_energy_consumption_kWh_for_m3User);
            req.setAttribute("Specific_consumption_of_primery_energyUser", Specific_consumption_of_primery_energyUser);
            req.setAttribute("Specific_CO2_emissionsUser", Specific_CO2_emissionsUser);
            req.setAttribute("Energy_efficiency_classUser", Energy_efficiency_classUser);
            req.setAttribute("Image_classUser", Image_classUser);
            req.setAttribute("Date_of_data_entryUser", Date_of_data_entryUser);

//set auto location
            req.setAttribute("location", Locale.getDefault());

            RequestDispatcher view = req.getRequestDispatcher("userpage.jsp");
            view.forward(req, resp);
        } else {
            resp.sendRedirect("index.jsp");
        }
        }
    }


//PrintWriter out = resp.getWriter();

//req.getRequestDispatcher("/userpage.jsp").forward(req, resp);

//resp.sendRedirect("userpage.jsp");

/*  System.out.println(LoginUser+ PasswordUser+Name_of_institutionUser+Head_of_institutionUser+Phone_numberUser);*/

/* HttpSession session = req.getSession(); session.setAttribute("name", Name_of_institutionUser);  */
