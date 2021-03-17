create table Admin
(
	adidnumber int primary key,	
	Name varchar(50),
	Address char(100),
	DOB varchar(50),
	Gender char(10),
	Mobile numeric(10),
	Email varchar(50),
	Password varchar(20),
	Photo varchar(200),
	Document varchar(1000)
)

create table Candidate
(
	idnumber int primary key,	
	Name varchar(50),
	Address char(100),
	DOB varchar(50),
	Gender char(10),
	Mobile numeric(10),
	Email varchar(50),
	Party char(15),
	Password varchar(20),
	Photo varchar(200),
	Document varchar(1000),
	EmailVerification varchar(10),
	ActiveStatus varchar(10),
	NoOfVotes int NOT NULL Default(0)
)

create table Voter
(
	idnumber int primary key,	
	Name varchar(50),
	Address char(100),
	DOB varchar(50),
	Gender char(10),
	Mobile numeric(10),
	Email varchar(50),
	Password varchar(20),
	Photo varchar(200),
	Document varchar(1000),
	EmailVerification varchar(10),
	ActiveStatus varchar(10),
	VotingStatus varchar(10) NOT NULL Default 'No'
)

create table Voting
(
	vcheck int primary key,
	votingstatus varchar(10),
	votingcompl varchar(10),
	resultdecl varchar(10)
)

select * from Candidate
select * from Voter
select * from Admin
select * from Voting

update Voting set votingstatus = 'No' where vcheck = 1;
update Voting set votingcompl = 'No' where vcheck = 1;
update Voting set resultdecl = 'No' where vcheck = 1;

update Voter set EmailVerification = 'Yes' where idnumber = 1; 

insert into Admin values(1, 'Shujaat', '1145 Janta Flats', '30-11-1998', 'Male', 9958704285, 'md@gmail.com', '123456', 'no photo', 'no document')

insert into Voting values(1, 'No', 'No', 'No')

insert into Candidate values(2, 'Huzaifa', '1145 Janta Flats', '30-11-1998', 'Male', 9958704285, 'huzaifa@gmail.com', 'INC', '123456', 'no photo', 'no document', 'Yes', 'Yes',0)
insert into Voter values(3, 'Voter 3', '1145 Janta Flats', '30-11-1998', 'Male', 9958704285, 'voter@gmail.com', '123456', 'no photo', 'no document', 'Yes', 'Yes', 'No')

delete from Candidate where idnumber = 0

alter table Candidate add EmailVerification varchar(10), ActiveStatus varchar(10);
insert into Candidate values(0)


alter table Voter drop Column VotingStatus
alter table Voter add VotingStatus varchar(10) NOT NULL Default 'No';

alter table Candidate add NoOfVotes int NOT NULL Default(0);

alter table Candidate drop Column NoOfVotes;

ALTER TABLE Candidate DROP CONSTRAINT [DF__Candidate__NoOfV__4BAC3F29]

select * from Candidate where NoOfVotes = (select max(NoOfVotes) from Candidate)