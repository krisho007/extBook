using { my.dataModel as db } from '../db/schema';

using { API_PURCHASEORDER_PROCESS_SRV as external } from './external/API_PURCHASEORDER_PROCESS_SRV';


service EscalationManagementService @(path: 'ems') {
    entity Escalations as projection on db.Escalations;

    entity POScheduleLines as projection on external.A_PurchaseOrderScheduleLine;
    
    // Function returing a predefined type
    action closeEscalation(EscalationId: String) returns String;

    // Action returning a single instance of an entity
    function getLatestEscalation() returns Escalations;

    // Action returning a collection of instances of an entity
    function getTopEscalations() returns array of Escalations;
    
}