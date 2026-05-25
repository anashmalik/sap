sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'odata.test.odatatest',
            componentId: 'ZI_021List',
            contextPath: '/ZI_021'
        },
        CustomPageDefinitions
    );
});