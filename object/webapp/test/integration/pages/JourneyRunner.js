sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"demo/obj/object/test/integration/pages/EmployeesObjectPage"
], function (JourneyRunner, EmployeesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('demo/obj/object') + '/test/flp.html#app-preview',
        pages: {
			onTheEmployeesObjectPage: EmployeesObjectPage
        },
        async: true
    });

    return runner;
});

