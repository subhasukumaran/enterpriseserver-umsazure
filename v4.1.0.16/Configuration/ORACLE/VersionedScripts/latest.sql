CREATE TABLE "SyncRS_UmsCredential"(
	"Id" int PRIMARY KEY NOT NULL,
	"UmsUrl" NVARCHAR2(255),
	"ClientId" NVARCHAR2(255),
	"ClientSecret" NVARCHAR2(255),
    "IsActive" NUMBER(1) NOT NULL)
;

CREATE SEQUENCE "SyncRS_UmsCredential_seq"
START WITH     1
INCREMENT BY   1
NOCACHE
NOCYCLE;

CREATE TABLE "SyncRS_UmsGroup"(
	"Id" int PRIMARY KEY NOT NULL,
	"GroupId" int NOT NULL,
	"UmsGroupId" int NOT NULL,
	"IsActive" NUMBER(1) NOT NULL)
	;

CREATE SEQUENCE "SyncRS_UmsGroup_seq"
START WITH     1
INCREMENT BY   1
NOCACHE
NOCYCLE;

ALTER TABLE "SyncRS_UmsGroup" ADD FOREIGN KEY("GroupId") REFERENCES "SyncRS_Group" ("Id")
;

CREATE TABLE "SyncRS_UmsUser"(
	"Id" int PRIMARY KEY NOT NULL,
	"UserId" int NOT NULL,
	"UmsUserId" int NOT NULL,
	"IsActive" NUMBER(1) NOT NULL)
	;

CREATE SEQUENCE "SyncRS_UmsUser_seq"
START WITH     1
INCREMENT BY   1
NOCACHE
NOCYCLE;

ALTER TABLE "SyncRS_UmsUser" ADD FOREIGN KEY("UserId") REFERENCES "SyncRS_User" ("Id")
;

ALTER TABLE "SyncRS_User" ADD "DomainId" VARCHAR2(4000) NULL
;
ALTER TABLE "SyncRS_Group" ADD "DomainId" VARCHAR2(4000) NULL
;