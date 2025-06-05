
using {Equipment.system.app  as service } from '../db/datamodel';
entity MyTasks @(restrict: [{
    grant: ['READ'],
     to: ['EmployeeUser']
    }
    ]) as projection on service.Tasks;

    entity MyIssues @(restrict: [{
    grant: ['*'],
     to: ['EmployeeUser']
    }
    ]) as projection on service.Issues;

//restric create Equipment access for emmp, it should be read only
entity Equipments @(restrict: [
    {
        grant: ['READ'],
    to: ['EmployeeUser']
    }
]) as projection on service.Equipments;
