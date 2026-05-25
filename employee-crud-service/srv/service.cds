using { emp as db } from '../db/schema';

service CatalogService {

    @odata.draft.enabled
    entity Employees as projection on db.Employees;

}