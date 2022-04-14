-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-09 10:08:10.881

-- tables
-- Table: Bill
CREATE TABLE Bill (
    Bill_No int  NOT NULL,
    Patient_Bill decimal  NOT NULL,
    Bill_Date date  NOT NULL,
    Patient_Patient_Id int  NOT NULL,
    CONSTRAINT Bill_pk PRIMARY KEY (Bill_No)
);

-- Table: Doctor
CREATE TABLE Doctor (
    Doctor_Id int  NOT NULL,
    Doctor_Name varchar(25)  NOT NULL,
    Gender varchar(10)  NOT NULL,
    CONSTRAINT Doctor_pk PRIMARY KEY (Doctor_Id)
);

-- Table: Lab
CREATE TABLE Lab (
    Lab_No int  NOT NULL,
    Date date  NOT NULL,
    Amount decimal  NOT NULL,
    Patient_Patient_Id int  NOT NULL,
    CONSTRAINT Lab_pk PRIMARY KEY (Lab_No)
);

-- Table: Patient
CREATE TABLE Patient (
    Patient_Id int  NOT NULL,
    Patient_Name varchar(25)  NOT NULL,
    Age int  NOT NULL,
    Doctor_Doctor_Id int  NOT NULL,
    CONSTRAINT Patient_pk PRIMARY KEY (Patient_Id)
);

-- Table: Room
CREATE TABLE Room (
    Room_No int  NOT NULL,
    Room_Type varchar(25)  NOT NULL,
    Status varchar(25)  NOT NULL,
    Patient_Patient_Id int  NOT NULL,
    CONSTRAINT Room_pk PRIMARY KEY (Room_No)
);

-- foreign keys
-- Reference: Bill_Patient (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Patient
    FOREIGN KEY (Patient_Patient_Id)
    REFERENCES Patient (Patient_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Lab_Patient (table: Lab)
ALTER TABLE Lab ADD CONSTRAINT Lab_Patient
    FOREIGN KEY (Patient_Patient_Id)
    REFERENCES Patient (Patient_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Patient_Doctor (table: Patient)
ALTER TABLE Patient ADD CONSTRAINT Patient_Doctor
    FOREIGN KEY (Doctor_Doctor_Id)
    REFERENCES Doctor (Doctor_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Room_Patient (table: Room)
ALTER TABLE Room ADD CONSTRAINT Room_Patient
    FOREIGN KEY (Patient_Patient_Id)
    REFERENCES Patient (Patient_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

