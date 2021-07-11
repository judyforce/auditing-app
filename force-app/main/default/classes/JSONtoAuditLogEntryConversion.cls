public with sharing class JSONtoAuditLogEntryConversion {

    public class Actor_location {
		public String country_code {get;set;} 

		public Actor_location(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'country_code') {
							country_code = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Actor_location consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public String actor {get;set;} 
	public Long timestamp {get;set;} 
	public String visibility {get;set;} 
	public String org {get;set;} 
	public String repo {get;set;} 
	public Long created_at {get;set;} 
	public String action {get;set;} 
	public Actor_location actor_location {get;set;} 
	public String user {get;set;} 
	public String x_document_id {get;set;} // in json: _document_id
	public String name {get;set;} 


    public static Audit_Log_Entry__c JSONtoAuditLogEntryConversion(JSONParser parser) {
		Audit_Log_Entry__c newEntry = new Audit_Log_Entry__c(); 
		while (parser.nextToken() != System.JSONToken.END_OBJECT) {
			if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
				String text = parser.getText();
				if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
					if (text == 'actor') {
						newEntry.Github_User__c = parser.getText();
					} else if (text == '@timestamp') {
						DateTime timestamp = DateTime.newInstance(parser.getLongValue());
						newEntry.timestamp__c = timestamp;
					} else if (text == 'visibility') {
						newEntry.visibility__c = parser.getText();
					} else if (text == 'org') {
						newEntry.org__c = parser.getText();
					} else if (text == 'repo') {
						newEntry.repository__c = parser.getText();
					} else if (text == 'created_at') {
						DateTime created = DateTime.newInstance(parser.getLongValue());
						newEntry.created_at__c = created;
					} else if (text == 'action') {
						newEntry.action__c = parser.getText();
					} else if (text == 'actor_location') {
						Actor_location actor_location = new Actor_location(parser);
						newEntry.country_code__c = actor_location.country_code;
					} else if (text == 'user') {
						newEntry.access_recipient__c = parser.getText();
					} else if (text == '_document_id') {
						newEntry.document_id__c = parser.getText();
					} else if (text == 'name') {
						newEntry.branch_name__c = parser.getText();
					} else {
						System.debug(LoggingLevel.WARN, 'JSON2Apex consuming unrecognized property: '+text);
						consumeObject(parser);
					}
				}
			}
		}
		return newEntry;
    }

public static List<Audit_Log_Entry__c> parse(String json) {
    System.JSONParser parser = System.JSON.createParser(json);
    return arrayOfJSONtoAuditLogEntryConversion(parser);
}

public static void consumeObject(System.JSONParser parser) {
    Integer depth = 0;
    do {
        System.JSONToken curr = parser.getCurrentToken();
        if (curr == System.JSONToken.START_OBJECT || 
            curr == System.JSONToken.START_ARRAY) {
            depth++;
        } else if (curr == System.JSONToken.END_OBJECT ||
            curr == System.JSONToken.END_ARRAY) {
            depth--;
        }
    } while (depth > 0 && parser.nextToken() != null);
}

private static List<Audit_Log_Entry__c> arrayOfJSONtoAuditLogEntryConversion(System.JSONParser p) {
    List<Audit_Log_Entry__c> res = new List<Audit_Log_Entry__c>();
    if (p.getCurrentToken() == null) p.nextToken();
    while (p.nextToken() != System.JSONToken.END_ARRAY) {
        res.add(JSONtoAuditLogEntryConversion(p));
    }
	insert res; 
    return res;
}

// private static Audit_Log_Entry__c create()
// {
//     Audit_Log_Entry__c c = new Audit_Log_Entry__c
//     (
//         Action__c = 'Pull request', 
//         Country_Code__c = 'USA', 
//         Github_User__c = 'judyforce'
//     );

//     insert c;
//     return c; 
// } 

}