public with sharing class AuditLogEntrySearchController {
    @AuraEnabled
    public static List<Audit_Log_Entry__c> searchLogs( String searchTerm ) {
        List<Audit_Log_Entry__c> audit_log_entries = new List<Audit_Log_Entry__c>();
        if ( String.isNotBlank( searchTerm ) ) {
            List<List<SObject>> searchResults = [
                FIND :searchTerm
                RETURNING Audit_Log_Entry__c(
                    Action__c, Country_Code__c, Github_User__c, Timestamp__c
                    ORDER BY Github_User__c
                    LIMIT 10
                )
            ];
            audit_log_entries = searchResults[0];
        }
        return audit_log_entries;
    }
}
