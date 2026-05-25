namespace emp;

using{
    cuid,
    managed
} from '@sap/cds/common';

entity Employees : cuid, managed {
    empId : String(10);
    empName : String(20);
    empSurname : String(20);
    empDept : String(100);
    empSalary : Decimal(15,2);
    empLocation : String(500);
    empRole : String(20);
}