create schema if not exists energoauditukr
DEFAULT CHARACTER SET utf8
        DEFAULT COLLATE utf8_general_ci;

create table building_parameters
(
    Login                 varchar(20) default '' not null,
    Name_of_institution   varchar(90)            null,
    Locations             tinytext               null,
    Settlement            varchar(50)            null,
    Region                varchar(50)            null,
    Functional_purpose    varchar(50)            null,
    Year_of_commissioning varchar(20)            null,
    Number_of_floors      int(2)                 null,
    Photo_main_path       varchar(100)           null,
    Id_number             int(20)                null,
    constraint building_parameters_Id_number_uindex
        unique (Id_number),
    constraint building_parameters_Login_uindex
        unique (Login)
);

alter table building_parameters
    add primary key (Login);

create table daily_consumption
(
    Login                varchar(20) not null
        primary key,
    Name_of_institution  tinytext    not null,
    Date_of_consumption  date        null,
    Price_electricity    double      null,
    Quantity_electricity int         null,
    Costs_electricity    double      null,
    Price_gas            double      null,
    Quantity_gas         int         null,
    Costs_gas            double      null,
    Price_heat_energy    double      null,
    Quantity_heat_energy int         null,
    Costs_heat_energy    double      null,
    Total_amount_per_day double      null
);

create table feedback
(
    First_Name varchar(30) null,
    Last_Name  varchar(30) null,
    Email      varchar(30) null,
    Subject    varchar(30) null,
    Comments   tinytext    null
);

create table institution
(
    Login               varchar(20) not null,
    Password            varchar(20) not null,
    Name_of_institution tinytext    null,
    Head_of_institution tinytext    null,
    Phone_number        varchar(15) null,
    constraint institution_Login_uindex
        unique (Login)
);

alter table institution
    add primary key (Login);

create table main_indicators_of_energy_efficiency
(
    Login                                  varchar(20) default '' not null,
    Name_of_institution                    varchar(90)            null,
    Heated_area                            double(7, 2)           null,
    Heated_volume                          double(8, 2)           null,
    Specific_energy_consumption_kWh_for_m3 double(5, 2)           null,
    Specific_consumption_of_primery_energy double(6, 2)           null,
    Specific_CO2_emissions                 double(5, 2)           null,
    Energy_efficiency_class                char                   null,
    Image_class                            blob                   null,
    Date_of_data_entry                     date                   null,
    constraint main_indicators_of_energy_efficiency_Login_uindex
        unique (Login)
);

alter table main_indicators_of_energy_efficiency
    add primary key (Login);

create table photos
(
    Login               varchar(20) not null
        primary key,
    Image_id            tinyint     null,
    Image_type          varchar(25) null,
    Image               blob        null,
    Image_size          varchar(25) null,
    Image_ctgy          varchar(25) null,
    Image_name          varchar(50) null,
    Name_of_institution tinytext    null
);





INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('admin', '1111', 'Administration', 'Admin Admin Admin', '+380501234567');
INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('example@umail.net', '123456', 'Школа', 'Прізвище Ім''я По батькові', '+380501234567');
INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('inst11@gmail.com', '147741', 'Загальноосвітня школа І-ІІ ступенів', 'Лисиця Марія Григорівна', '+380501234567');
INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('inst12@gmail.com', '852258', 'Гімназія ім.Т.Шевченка', 'Заєць Юрій Михайлович', '+380501234567');
INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('inst13@gmail.com', '963369', 'Професійний лісопромислович ліцей', 'Петрунько Анна Ігорівна', '+380501234567');
INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('inst1@gmail.com', 'jkjkjl', 'Адміністративна будівля міської ради', 'Сидоренко Павло Васильович', '+380501234567');
INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('inst2@gmail.com', '787fdf', 'Районний центр зайнятості', 'Гриценко Петро Степанович', '+380501234567');
INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('inst3@gmail.com', 'fdf556', 'Обласний центр зайнятості', 'Дудка Лариса Іванівна', '+380501234567');
INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('inst4@gmail.com', 'dfd454', 'Гімназія ім.В.Сухомлинського', 'Зінченко Надія Андріївна', '+380501234567');
INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('inst5@gmail.com', 'fdf454', 'Центральна районна лікарня', 'Клименко Ірина Вікторівна', '+380501234567');
INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('inst6@gmail.com', 'ggdg45', 'Спортивний павільйон', 'Коваль Микола Олегович', '+380501234567');
INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('inst7@gmail.com', 'tttt78', 'Навчально-реабілітаційний центр', 'Павленко Вадим Йосипович', '+380501234567');
INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('inst8@gmail.com', 'tert45', 'Обласний музично-драматичний театр', 'Панасюк Остап Іванович', '+380501234567');
INSERT INTO energoauditukr.institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('inst9@gmail.com', 'rtt454', 'Спортивний комплекс', 'Петренко Дмитро Антонович', '+380501234567');

INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('admin', 'Street', 'Ivano-Frankivsk', 'private building', 'Administration', '2020', 1, 'Ivano-Frankivska', 7777777, null);
INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('example@umail.net', 'вул.Шевченка,1, м.Бурштин, Івано-Франківська область', 'м.Бурштин', 'Навчальний заклад', 'Школа', '2019', 3, 'Івано-Франківська', 8888888, null);
INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('inst11@gmail.com', 'вул.Шевченка,5, с.Раковець, Богородчанський район, Івано-Франківська область', 'с.Раковець', 'Навчальний заклад', 'Загальноосвітня школа І-ІІ ступенів', '2019', 3, 'Івано-Франківська', 1236541, null);
INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('inst12@gmail.com', 'вул.І.Франка,151, с.Кадобна, Калуський район, Івано-Франківська область', 'с.Кадобна', 'Навчальний заклад', 'Гімназія ім.Т.Шевченка', '1990', 2, 'Івано-Франківська', 1000056, null);
INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('inst13@gmail.com', 'вул.С.Бандери,5, смт.Брошнів-Осада, Рожнятівський район,Івано-Франківська область', 'смт.Брошнів-Осада', 'Навчальний заклад', 'Професійний лісопромислович ліцей', '1972', 3, 'Івано-Франківська', 1005478, null);
INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('inst1@gmail.com', 'вул.С.Стрільців,4, м.Бурштин, Івано-Франківська область', 'м.Бурштин', 'Громадська будівля', 'Адміністративна будівля міської ради', '1968', 5, 'Івано-Франківська', 9685470, null);
INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('inst2@gmail.com', 'вул.Кармелюка,1, м.Тлумач, Тлумацький район, Івано-Франківська область', 'м.Тлумач', 'Громадська будівля', 'Районний центр зайнятості', '1986', 2, 'Івано-Франківська', 9897874, null);
INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('inst3@gmail.com', 'вул.Деповська,89а, м.Івано-Франківськ, Івано-Франківська область', 'м.Івано-Франківськ', 'Громадська будівля', 'Обласний центр зайнятості', '1966', 2, 'Івано-Франківська', 7894545, null);
INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('inst4@gmail.com', 'вул.Шевченка,89, с.Креховичі, Рожнятівський район, Івано-Франківська область', 'с.Креховичі', 'Навчальний заклад', 'Гімназія ім.В.Сухомлинського', '1991', 2, 'Івано-Франківська', 9800007, null);
INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('inst5@gmail.com', 'вул.Рідчанська,10, смт.Лисець, Тисменицький район, Івано-Франківська область', 'смт.Лисець', 'Заклад охорони здоров''я', 'Центральна районна лікарня', '1986', 3, 'Івано-Франківська', 1450000, null);
INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('inst6@gmail.com', 'вул.С.Бандери,1Б, м.Долина, Долинський район, Івано-Франківська область', 'м.Долина', 'Громадська будівля', 'Спортивний павільйон', 'Реконструкція', 2, 'Івано-Франківська', 9878454, null);
INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('inst7@gmail.com', 'вул.Тополина,6, м.Івано-Франківськ, Івано-Франківська область', 'м.Івано-Франківськ', 'Навчальний заклад', 'Навчально-реабілітаційний центр', '1978', 3, 'Івано-Франківська', 4587712, null);
INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('inst8@gmail.com', 'вул.Незалежності,42, м.Івано-Франківськ, Івано-Франківська область', 'м.Івано-Франківськ', 'Громадська будівля', 'Обласний музично-драматичний театр', '1980', 9, 'Івано-Франківська', 9874454, null);
INSERT INTO energoauditukr.building_parameters (Login, Locations, Settlement, Functional_purpose, Name_of_institution, Year_of_commissioning, Number_of_floors, Region, Id_number, photo_main) VALUES ('inst9@gmail.com', 'вул.22Січня,1, смт.Брошнів-Осада, Рожнятівський район, Івано-Франківська область', 'смт.Брошнів-Осада', 'Громадська будівля', 'Спортивний комплекс', 'Нове будівництво', 2, 'Івано-Франківська', 9802004, null);

INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('inst5@gmail.com', 'Центральна районна лікарня', 'G', null, 2775, 8918, 160, 296, 56, '2013-02-20');
INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('inst6@gmail.com', 'Спортивний павільйон', 'С', null, 1086, 3901, 56, 614, 112, '2013-02-20');
INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('inst9@gmail.com', 'Спортивний комплекс', 'B', null, 2098, 15826, 32, 500, 95, '2013-02-20');
INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('inst2@gmail.com', 'Районний центр зайнятості', 'G', null, 538, 1602, 109, 417, 82, '2013-02-20');
INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('inst13@gmail.com', 'Професійний лісопромислович ліцей', 'G', null, 1483, 4449, 59, 274, 53, '2013-02-20');
INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('inst3@gmail.com', 'Обласний центр зайнятості', 'F', null, 772, 2067, 101, 346, 68, '2013-02-20');
INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('inst8@gmail.com', 'Обласний музично-драматичний театр', 'E', null, 13294, 71766, 62, 564, 108, '2013-02-20');
INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('example@umail.net', 'Школа', 'A', null, 15000, 70000, 20, 200, 20, '2013-02-20');
INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('inst7@gmail.com', 'Навчально-реабілітаційний центр', 'F', null, 2524, 8077, 51, 121, 23, '2013-02-20');
INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('inst11@gmail.com', 'Загальноосвітня школа І-ІІ ступенів', 'E', null, 4832, 17098, 48, 85, 16, '2013-02-20');
INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('inst12@gmail.com', 'Гімназія ім.Т.Шевченка', 'G', null, 1020, 3367, 69, 320, 60, '2013-02-20');
INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('inst4@gmail.com', 'Гімназія ім.В.Сухомлинського', 'G', null, 2398, 8022, 81, 382, 74, '2013-02-20');
INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('inst1@gmail.com', 'Адміністративна будівля міської ради', 'E', null, 915, 2508, 63, 277, 63, '2013-02-20');
INSERT INTO energoauditukr.main_indicators_of_energy_efficiency (Login, Name_of_institution, Energy_efficiency_class, Image_class, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Date_of_data_entry) VALUES ('admin', 'Administration', 'A', null, 500, 2000, 20, 200, 20, '2013-02-20');


INSERT INTO energoauditukr.feedback (First_Name, Last_Name, Email, Subject, Comments) VALUES ('Ліля', 'Тарасів', 'lilya@umail.net', 'technical problem with website', 'Мій перший відгук');

INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('admin', 'Administration', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('example@umail.net', 'Школа', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('inst11@gmail.com', 'Загальноосвітня школа І-ІІ ступенів', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('inst12@gmail.com', 'Гімназія ім.Т.Шевченка', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('inst13@gmail.com', 'Професійний лісопромислович ліцей', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('inst1@gmail.com', 'Адміністративна будівля міської ради', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('inst2@gmail.com', 'Районний центр зайнятості', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('inst3@gmail.com', 'Обласний центр зайнятості', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('inst4@gmail.com', 'Гімназія ім.В.Сухомлинського', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('inst5@gmail.com', 'Центральна районна лікарня', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('inst6@gmail.com', 'Спортивний павільйон', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('inst7@gmail.com', 'Навчально-реабілітаційний центр', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('inst8@gmail.com', 'Обласний музично-драматичний театр', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO energoauditukr.daily_consumption (Login, Name_of_institution, Date_of_consumption, Price_electricity, Quantity_electricity, Costs_electricity, Price_gas, Quantity_gas, Costs_gas, Price_heat_energy, Quantity_heat_energy, Costs_heat_energy, Total_amount_per_day) VALUES ('inst9@gmail.com', 'Спортивний комплекс', null, null, null, null, null, null, null, null, null, null, null);

INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('admin', null, null, null, null, null, null, 'Administration');
INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('example@umail.net', null, null, null, null, null, null, 'Школа');
INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('inst11@gmail.com', null, null, null, null, null, null, 'Загальноосвітня школа І-ІІ ступенів');
INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('inst12@gmail.com', null, null, null, null, null, null, 'Гімназія ім.Т.Шевченка');
INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('inst13@gmail.com', null, null, null, null, null, null, 'Професійний лісопромислович ліцей');
INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('inst1@gmail.com', null, null, null, null, null, null, 'Адміністративна будівля міської ради');
INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('inst2@gmail.com', null, null, null, null, null, null, 'Районний центр зайнятості');
INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('inst3@gmail.com', null, null, null, null, null, null, 'Обласний центр зайнятості');
INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('inst4@gmail.com', null, null, null, null, null, null, 'Гімназія ім.В.Сухомлинського');
INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('inst5@gmail.com', null, null, null, null, null, null, 'Центральна районна лікарня');
INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('inst6@gmail.com', null, null, null, null, null, null, 'Спортивний павільйон');
INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('inst7@gmail.com', null, null, null, null, null, null, 'Навчально-реабілітаційний центр');
INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('inst8@gmail.com', null, null, null, null, null, null, 'Обласний музично-драматичний театр');
INSERT INTO energoauditukr.photos (Login, Image_id, Image_type, Image, Image_size, Image_ctgy, Image_name, Name_of_institution) VALUES ('inst9@gmail.com', null, null, null, null, null, null, 'Спортивний комплекс');