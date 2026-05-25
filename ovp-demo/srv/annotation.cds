using CatalogService from './service';

annotate CatalogService.Ovp with @(

    // =====================================================
    // HEADER INFORMATION
    // =====================================================

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

    // =====================================================
    // LIST REPORT / OVP TABLE CARD
    // =====================================================

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
        }

    ],

    // =====================================================
    // FILTER BAR
    // =====================================================

    UI.SelectionFields : [
        SalesOrderNo,
        CustomerName,
        Status
    ],

    // =====================================================
    // OVP + OBJECT PAGE IDENTIFICATION
    // =====================================================

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
        }

    ],

    // =====================================================
    // OBJECT PAGE FACETS
    // =====================================================

    UI.Facets : [

        {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'General Information',
            Target : '@UI.FieldGroup#General'
        },

        {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Financial Information',
            Target : '@UI.FieldGroup#Finance'
        }

    ],

    // =====================================================
    // GENERAL SECTION
    // =====================================================

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
                Value : Status,
                Label : 'Status'
            }

        ]
    },

    // =====================================================
    // FINANCIAL SECTION
    // =====================================================

    UI.FieldGroup #Finance : {

        Data : [

            {
                $Type : 'UI.DataField',
                Value : Amount,
                Label : 'Amount'
            },

            {
                $Type : 'UI.DataField',
                Value : Currency,
                Label : 'Currency'
            }

        ]
    }

);