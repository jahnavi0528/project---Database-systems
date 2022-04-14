insert into Doctor(Doctor_id,Doctor_Name,Gender) values(1666,'James','Male');
insert into patient(Patient_Id,Patient_Name,Age,Doctor_Doctor_Id)values(1690,'William',30,1666);
update doctor set Doctor_Name='Thomas Hardy' where Doctor_Id=126;
update lab set amount=1500 where lab_no=1569;
delete from doctor where doctor_Id='1666';
select * from room;
select doctor_name, patient_name from doctor d, patient p where d.doctor_id=p.Doctor_doctor_Id;
select * from Patient p,lab l where p.patient_id=l.patient_patient_id;
select * from Patient p,lab l where p.patient_id=l.patient_patient_id;