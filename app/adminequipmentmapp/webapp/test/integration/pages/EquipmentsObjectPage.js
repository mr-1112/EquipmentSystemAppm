sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.equipm.demo.adminequipmentmapp',
            componentId: 'EquipmentsObjectPage',
            contextPath: '/Equipments'
        },
        CustomPageDefinitions
    );
});