DROP TABLE tblMembers -- Drop the tblIndividuals table if it exists

CREATE TABLE tblMembers -- Create the tblIndividuals table
(
MemberID CHAR(10) NOT NULL,	-- 10 length CHAR field named IndividualID. This field cannot be empty.
MemberFirst VARCHAR(20),			-- 20 length VARCHAR field named FirstName
MemberMiddle VARCHAR(20),			-- 20 length VARCHAR field named FirstName
MemberLast VARCHAR(20),			-- 20 length VARCHAR field named LastName
MemberFirstAddress VARCHAR(50),			-- 50 length VARCHAR field named IndAddress
MemberSecondAddress VARCHAR(50),			-- 50 length VARCHAR field named IndAddress
MemberCity VARCHAR(35),
MemberProvince CHAR(2),
MemberCountry VARCHAR(30),
MemberPostal CHAR(6),
MemberHomePhone CHAR(10),					-- 10 length CHAR field named Phone
MemberCellPhone CHAR(10),					-- 10 length CHAR field named Phone
MemberWorkPhone CHAR(10),					-- 10 length CHAR field named Phone
MemberEmail VARCHAR(50),
MemberBirthDate DATE,

EmergencyID CHAR(10) NOT NULL,	-- 10 length CHAR field named IndividualID. This field cannot be empty.
EmergencyFirst VARCHAR(20),			-- 20 length VARCHAR field named FirstName
EmergencyMiddle VARCHAR(20),			-- 20 length VARCHAR field named FirstName
EmergencyLast VARCHAR(20),			-- 20 length VARCHAR field named LastName
EmergencyFirstAddress VARCHAR(50),			-- 50 length VARCHAR field named IndAddress
EmergencySecondAddress VARCHAR(50),			-- 50 length VARCHAR field named IndAddress
EmergencyCity VARCHAR(35),
EmergencyProvince CHAR(2),
EmergencyCountry VARCHAR(30),
EmergencyHomePhone CHAR(10),					-- 10 length CHAR field named Phone
EmergencyCellPhone CHAR(10),					-- 10 length CHAR field named Phone
EmergencyWorkPhone CHAR(10),					-- 10 length CHAR field named Phone
EmergencyRelation DATE,

DrugAllergies VARCHAR(200),
OtherAllergies VARCHAR(200),
MedicalConditions VARCHAR(200),
Medications VARCHAR(200),
PhysicalLimitations VARCHAR(200),

LogBookNumber CHAR(11),
Occupation VARCHAR(100),
NameVariation VARCHAR(50),
IsOtherClubMember BIT,
PrimaryClub VARCHAR(4), -- 'MMS' or 'MCO' or 'CRCA'
IdPhotoOption VARCHAR(8), -- 'happy' or 'new' or 'passport' or 'email'
PaymentOption CHAR(5), -- 'email' or 'other'


PRIMARY KEY(MemberID)		-- The primary key of this table is IndividualID	
);