create table building_parameters
(
    Login                 varchar(20) default '' not null,
    Locations             tinytext               null,
    Settlement            varchar(50)            null,
    Functional_purpose    varchar(50)            null,
    Name_of_institution   varchar(90)            null,
    Year_of_commissioning varchar(20)            null,
    Number_of_floors      int(2)                 null,
    Region                varchar(50)            null,
    Id_number             int(20)                null,
    photo_main            blob                   null,
    constraint building_parameters_Id_number_uindex
        unique (Id_number),
    constraint building_parameters_Login_uindex
        unique (Login)
);

alter table building_parameters
    add primary key (Login);

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
    Login                                  varchar(20)  null,
    Name_of_institution                    varchar(90)  null,
    Energy_efficiency_class                char         null,
    Image_class                            blob         null,
    Heated_area                            double(7, 2) null,
    Heated_volume                          double(8, 2) null,
    Specific_energy_consumption_kWh_for_m3 double(5, 2) null,
    Specific_consumption_of_primery_energy double(6, 2) null,
    Specific_CO2_emissions                 double(5, 2) null,
    Date_of_data_entry                     date         null,
    constraint main_indicators_of_energy_efficiency_Login_uindex
        unique (Login)
);

create table photos
(
    image_id   tinyint     null,
    image_type varchar(25) null,
    image      blob        null,
    image_size varchar(25) null,
    image_ctgy varchar(25) null,
    image_name varchar(50) null,
    Login      varchar(20) null
);

