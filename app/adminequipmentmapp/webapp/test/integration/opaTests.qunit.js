sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/equipm/demo/adminequipmentmapp/test/integration/FirstJourney',
		'com/equipm/demo/adminequipmentmapp/test/integration/pages/EquipmentsList',
		'com/equipm/demo/adminequipmentmapp/test/integration/pages/EquipmentsObjectPage'
    ],
    function(JourneyRunner, opaJourney, EquipmentsList, EquipmentsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/equipm/demo/adminequipmentmapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEquipmentsList: EquipmentsList,
					onTheEquipmentsObjectPage: EquipmentsObjectPage
                }
            },
            opaJourney.run
        );
    }
);