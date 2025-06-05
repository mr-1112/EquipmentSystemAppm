namespace Equipment.system.app;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Equipments : cuid, managed {
    name     : String(50) @title: '{i18n>name}'; ///adding lable in UI using annotation @title from i18n file using i18n>name databinding syntax
    type     : Association to EquipmentTypes; //managed association - refer capire
    location : Association to Locations;
    status   : Association to EquipmentStatus;
    description : String(200);
    manufacturing : String(100);
    tasks        : Composition of many Tasks on tasks.equipment = $self; //$self refers to Equipment & CRUD opertions can be performed with Composition
    issues       : Composition of many Issues on issues.equipment = $self;//1:n cardinality use Composition
}

entity Tasks: cuid, managed {
    description: String(200);
    duedate: Date;
    priority: Association to TaskPriority;
    status: Association to TaskStatus;
    assignedTo: Association to Employees; //cardinality 1:1 , use Association
    equipment: Association to Equipments;
}

entity Issues: cuid, managed{
    description: String(250);
    reportedBy: Association to Employees;
    equipment: Association to Equipments;
    issueStatus: Association to IssueStatus;
}
entity  Employees : cuid, managed {
    name: String(50);
    username: String(50);
    email: String(50);
    role: Association to Roles;
} 

///table for equipment TYPES
entity EquipmentTypes {
    key code : String(2);
        name : String(50);
}

entity TaskStatus {
        key code : String(2);
        name : String(50);
}
///table for Locations
entity Locations {
    key locationId : String(3);
        name       : String(50);
}

entity EquipmentStatus {
    key equipmentCode : String(3);
        name          : String(50);
}

entity IssueStatus {
    key statusCode : String(3);
        name       : String(50);
}

entity TaskPriority {
    key code : String(2);
        name : String(50);
}

entity IssueSeverity {
    key id   : String(2);
        desc : String(25);
}

entity Roles {
    key id   : String(2);
        desc : String(25);
}

//This is sample Entity
entity SampleEntity {
    key ID   : Int16;
        type : String;
}