using {Equipment.system.app as service } from '../db/datamodel';

///two services wil be created , one for admin and one for Employee
service EquipmentSystemSrv{
    entity Equipments as projection on service.Equipments;
    entity EquipmentTypes as projection on service.EquipmentTypes;
    entity Locations as projection on service.Locations;
    entity EquipmentStatus as projection on service.EquipmentStatus;
    entity IssueStatus as projection on service.IssueStatus;
    entity TaskPriority as projection on service.TaskPriority;
    entity IssueSeverity as projection on service.IssueSeverity;
    entity Roles as projection on service.Roles;
    entity TaskStatus as projection on service.TaskStatus
    
}
service AdminService{
    entity Equipments as projection on service.Equipments;
    entity Employees  as projection on service.Employees;
    entity Locations as projection on service.Locations;
    entity EquipmentStatus as projection on service.EquipmentStatus;
    entity Tasks as projection on service.Tasks;
    entity TaskStatus as projection on service.TaskStatus;
    entity Issues as projection on service.Issues;
    entity IssueStatus as projection on service.IssueStatus;
    entity TaskPriority as projection on service.TaskPriority;
    entity IssueSeverity as projection on service.IssueSeverity;
     entity Roles as projection on service.Roles
}