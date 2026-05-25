sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"odata/test/odatatest/test/integration/pages/ZI_021List",
	"odata/test/odatatest/test/integration/pages/ZI_021ObjectPage"
], function (JourneyRunner, ZI_021List, ZI_021ObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('odata/test/odatatest') + '/test/flp.html#app-preview',
        pages: {
			onTheZI_021List: ZI_021List,
			onTheZI_021ObjectPage: ZI_021ObjectPage
        },
        async: true
    });

    return runner;
});

