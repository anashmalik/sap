using  my.sales as db  from '../db/schema';
service CatalogService{
    @odata.draft.enabled //For perform crud op
    entity SalesOrders
        as projection on db.SalesOrders;
}