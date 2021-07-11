public with sharing class AuditLogEntrySearchController {
    @AuraEnabled
    public static List<Audit_Log_Entry__c> searchLogs( String searchTerm ) {
        List<Audit_Log_Entry__c> audit_log_entries = new List<Audit_Log_Entry__c>();
        if ( String.isNotBlank( searchTerm ) ) {
            List<List<SObject>> searchResults = [
                FIND :searchTerm
                RETURNING Audit_Log_Entry__c(
                    Timestamp__c, Github_User__c, Action__c, Repository__c, Branch_Name__c, Access_Recipient__c, Country_Code__c, Org__c, Document_ID__c
                    ORDER BY Timestamp__c
                    LIMIT 100
                )
            ];
            audit_log_entries = searchResults[0];
        }
        else{
            List<List<SObject>> searchResults = [
                FIND : 'auditing-tool-tester'
                RETURNING Audit_Log_Entry__c(
                    Timestamp__c, Github_User__c, Action__c, Repository__c, Branch_Name__c, Access_Recipient__c, Country_Code__c, Org__c, Document_ID__c
                    ORDER BY Timestamp__c
                    LIMIT 250
                )
            ];
        }
        return audit_log_entries;
    }
}
