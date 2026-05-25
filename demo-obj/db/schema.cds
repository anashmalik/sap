namespace demo.obj;

using { cuid, managed } from '@sap/cds/common';
@odata.draft.enabled
entity Employees : cuid, managed {
    empId       : String(10);
    empName     : String(30);
    department     : String(50);
    designation : String(50);
    salary      : Decimal(15,2);
    currancy    : String(5);
};