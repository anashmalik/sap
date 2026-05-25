using my.ovp as db from '../db/schema';

service CatalogService {
    @data.draft.enabled
    entity Ovp as projection on db.Ovp; 
}