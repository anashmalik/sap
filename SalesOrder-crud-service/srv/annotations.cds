using CatalogService from './service';

annotate CatalogService.SalesOrders with @(

    // =========================
    // HEADER
    // =========================

    UI.HeaderInfo : {
        TypeName : 'Sales Order',
        TypeNamePlural : 'Sales Orders',

        Title : {
            $Type : 'UI.DataField',
            Value : SalesOrderNo
        },

        Description : {
            $Type : 'UI.DataField',
            Value : CustomerName
        }
    },

    // =========================
    // LIST REPORT COLUMNS
    // =========================

    UI.LineItem : [

        {
            $Type : 'UI.DataField',
            Value : SalesOrderNo,
            Label : 'Sales Order'
        },

        {
            $Type : 'UI.DataField',
            Value : CustomerName,
            Label : 'Customer Name'
        },

        {
            $Type : 'UI.DataField',
            Value : Amount,
            Label : 'Amount'
        },

        {
            $Type : 'UI.DataField',
            Value : Currency,
            Label : 'Currency'
        },

        {
            $Type : 'UI.DataField',
            Value : Status,
            Label : 'Status'
        },
        {
            $Type : 'UI.DataField',
            Value : Remarks,
            Label : 'Remarks'
        }

    ],

    // =========================
    // FILTER BAR
    // =========================

    UI.SelectionFields : [
        SalesOrderNo,
        CustomerName,
        Status
    ],

    // =========================
    // OBJECT PAGE SECTIONS
    // =========================

    UI.Facets : [

        {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'General Information',
            Target : '@UI.FieldGroup#General'
        }

    ],

    // =========================
    // OBJECT PAGE FORM FIELDS
    // =========================

    UI.FieldGroup #General : {

        Data : [

            {
                $Type : 'UI.DataField',
                Value : SalesOrderNo,
                Label : 'Sales Order'
            },

            {
                $Type : 'UI.DataField',
                Value : CustomerName,
                Label : 'Customer Name'
            },

            {
                $Type : 'UI.DataField',
                Value : Amount,
                Label : 'Amount'
            },

            {
                $Type : 'UI.DataField',
                Value : Currency,
                Label : 'Currency'
            },

            {
                $Type : 'UI.DataField',
                Value : Status,
                Label : 'Status'
            },
        {
            $Type : 'UI.DataField',
            Value : Remarks,
            Label : 'Remarks'
        }

        ]
    },

    // =========================
    // IDENTIFICATION SECTION
    // =========================

    UI.Identification : [

        {
            $Type : 'UI.DataField',
            Value : SalesOrderNo,
            Label : 'Sales Order'
        },

        {
            $Type : 'UI.DataField',
            Value : CustomerName,
            Label : 'Customer Name'
        },

        {
            $Type : 'UI.DataField',
            Value : Amount,
            Label : 'Amount'
        },

        {
            $Type : 'UI.DataField',
            Value : Currency,
            Label : 'Currency'
        },

        {
            $Type : 'UI.DataField',
            Value : Status,
            Label : 'Status'
        }

    ]

);