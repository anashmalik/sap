using CatalogService from './service';

annotate CatalogService.Employees with @(

    UI.HeaderInfo : {
        TypeName       : 'Employee',
        TypeNamePlural : 'Employees',

        Title : {
            $Type : 'UI.DataField',
            Value : empName
        },

        Description : {
            $Type : 'UI.DataField',
            Value : empRole
        }
    },

    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : empId,
            Label : 'Employee ID'
        },
        {
            $Type : 'UI.DataField',
            Value : empName,
            Label : 'First Name'
        },
        {
            $Type : 'UI.DataField',
            Value : empSurname,
            Label : 'Last Name'
        },
        {
            $Type : 'UI.DataField',
            Value : empDept,
            Label : 'Department'
        },
        {
            $Type : 'UI.DataField',
            Value : empSalary,
            Label : 'Salary'
        },
        {
            $Type : 'UI.DataField',
            Value : empLocation,
            Label : 'Location'
        },
        {
            $Type : 'UI.DataField',
            Value : empRole,
            Label : 'Role'
        }
    ],

    UI.SelectionFields : [
        empId,
        empName,
        empDept,
        empRole
    ],

    UI.Facets : [
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'General Information',
            Target : '@UI.FieldGroup#General'
        }
    ],

    UI.FieldGroup #General : {
        Data : [
            {
                $Type : 'UI.DataField',
                Value : empId,
                Label : 'Employee ID'
            },
            {
                $Type : 'UI.DataField',
                Value : empName,
                Label : 'First Name'
            },
            {
                $Type : 'UI.DataField',
                Value : empSurname,
                Label : 'Last Name'
            },
            {
                $Type : 'UI.DataField',
                Value : empDept,
                Label : 'Department'
            },
            {
                $Type : 'UI.DataField',
                Value : empSalary,
                Label : 'Salary'
            },
            {
                $Type : 'UI.DataField',
                Value : empLocation,
                Label : 'Location'
            },
            {
                $Type : 'UI.DataField',
                Value : empRole,
                Label : 'Role'
            }
        ]
    }
);