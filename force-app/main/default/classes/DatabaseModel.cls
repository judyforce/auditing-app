public with sharing class DatabaseModel {
    public static void main(){
        httpResponse res = GithubAPI.callout('GET', '/orgs/auditing-tool-tester/audit-log');
        List<Audit_Log_Entry__c> data = JSONtoAuditLogEntryConversion.parse(res.getBody());
        save(data);    
    }

    public static void save(List<Audit_Log_Entry__c> entries) {
        List<Audit_Log_Entry__c> toBeInserted = new List<Audit_Log_Entry__c>(); 

        for(Audit_Log_Entry__c entry : entries){
            Database.SaveResult saveResult = Database.insert(entry, false);
            
            if (!saveResult.isSuccess()) {
                for (Database.Error error : saveResult.getErrors()) {
                    if (error instanceof Database.DuplicateError) {
                        continue; 
                    }
                }
            }else{
                toBeInserted.add(entry);
            }

        }
        if(toBeInserted.size() > 0){
            upsert toBeInserted; 
        }
        
    }

}