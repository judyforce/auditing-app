public with sharing class githubAPI {
    public static String BASE_URL = 'https://api.github.com/';

        //Method to perform a callout and return an httpResponse
    public static httpResponse callout(String httpMethod, String endpoint){
        //Instantiate an httpRequest and set the required attributes
        httpRequest req = new httpRequest();
        req.setMethod(httpMethod);
        req.setEndpoint('callout:GithubAPI' + endpoint);
    
            //Optional attributes are often required to conform to the 3rd Party Web Service Requirements
        req.setHeader('Accept-Encoding','gzip, deflate');
    
            //You can adjust the timeout duration (in milliseconds) to deal with slow servers or large payloads
        req.setTimeout(120000);
    
            //Use the HTTP Class to send the httpRequest and receive an httpResposne
            /*If you are not using an HttpCalloutMock: 
            if (!test.isRunningTest){
            */
        httpResponse res = new http().send(req);
            /*If you are not using an HttpCalloutMock: 
            }
            */
            // system.debug(res.toString());
        return res;
    }

public void main(){
    callout('GET', '/orgs/auditing-tool-tester/auditlog');
    //sfdx force:data:tree:export -q "SELECT Github_User__c, Timestamp__c, Country_Code__c, Action__c FROM Audit_Log_Entry__c" -d ./data

}

}