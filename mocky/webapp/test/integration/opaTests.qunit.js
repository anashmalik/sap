/* global QUnit */
QUnit.config.autostart = false;

sap.ui.require(["mocky/test/integration/AllJourneys"
], function () {
	QUnit.start();
});
