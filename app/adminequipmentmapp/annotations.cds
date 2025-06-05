using AdminService as service from '../../srv/AdminService';

annotate service.Equipments with @(
    UI.LineItem: [
       {
        $Type : 'UI.DataField',
        //Label : 'name'
         Label : 'Names',
        Value  : name 
       },
       {
        $Type : 'UI.DataField',
        Value : type.name,
        Label : 'Equipment Type',
    },
    {
        $Type : 'UI.DataField',
        Label : 'Manufacturing',
        Value  : manufacturing,
       }, {
        $Type : 'UI.DataField',
        Label : 'description',
        Value  : description,
       }, {
        $Type : 'UI.DataField',
        Label : 'status',
        Value  : status_equipmentCode,
       },
    ],
    UI.SelectionFields : [
        type_code,
    ],);
annotate service.Equipments with {
    type @(
        Common.Label : 'Equipment Type',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'EquipmentTypes',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : type_code,
                    ValueListProperty : 'code',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.EquipmentTypes with {
    name @Common.Text : code
};

annotate service.Equipments with {
    status @Common.Label : 'Status'
};