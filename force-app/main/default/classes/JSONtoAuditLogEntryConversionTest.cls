@IsTest
public with sharing class JSONtoAuditLogEntryConversionTest {
	
	// This test method should give 100% coverage
    @IsTest
	static void testParse() {
		String json = '['+
		'  {'+
		'    \"actor\": \"BenBozou\",'+
		'    \"@timestamp\": 1624996090220,'+
		'    \"visibility\": \"internal\",'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/service-catalog\",'+
		'    \"created_at\": 1624996090220,'+
		'    \"action\": \"repo.add_member\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"IE\"'+
		'    },'+
		'    \"user\": \"allisonbrownsf\",'+
		'    \"_document_id\": \"6PoKQ4r8C92xozF3WCF1MQ\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"rui-rayqiu\",'+
		'    \"@timestamp\": 1624995311739,'+
		'    \"created_at\": 1624995311739,'+
		'    \"action\": \"pull_request.create_review_request\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"zxFvnGsqflROh3x3Go6noQ\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"rui-rayqiu\",'+
		'    \"@timestamp\": 1624995306032,'+
		'    \"created_at\": 1624995306032,'+
		'    \"action\": \"pull_request.create_review_request\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"Md-C5iAisZ814rEV2-UUrA\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"rui-rayqiu\",'+
		'    \"@timestamp\": 1624995299764,'+
		'    \"created_at\": 1624995299764,'+
		'    \"action\": \"pull_request.create_review_request\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"1YRws0xA6fQYI6FEd4O1nA\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"rui-rayqiu\",'+
		'    \"@timestamp\": 1624995290993,'+
		'    \"created_at\": 1624995290993,'+
		'    \"action\": \"pull_request.create_review_request\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"i339aM5r9-85Xyd4KCW11A\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"rui-rayqiu\",'+
		'    \"@timestamp\": 1624995290957,'+
		'    \"created_at\": 1624995290957,'+
		'    \"action\": \"pull_request.create\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"3xG6FD_uSMSClSfEHeMiCw\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"sloydsf\",'+
		'    \"@timestamp\": 1624993464980,'+
		'    \"created_at\": 1624993464980,'+
		'    \"action\": \"pull_request.merge\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"4ro1Qb6iZTfnnk87MmakoA\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"pdoraisamysf\",'+
		'    \"@timestamp\": 1624993135070,'+
		'    \"created_at\": 1624993135070,'+
		'    \"action\": \"pull_request_review.submit\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"FKb_LbKLUjASef03eyLfng\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"davidsusalesforce\",'+
		'    \"@timestamp\": 1624993013844,'+
		'    \"created_at\": 1624993013844,'+
		'    \"action\": \"pull_request_review.submit\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"Jes9Bt7XBI_BDvLzYVMVfA\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"sloydsf\",'+
		'    \"@timestamp\": 1624992986324,'+
		'    \"created_at\": 1624992986324,'+
		'    \"action\": \"pull_request.create_review_request\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"ymlkLxmngyPfwjZrJtYzKA\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"sloydsf\",'+
		'    \"@timestamp\": 1624992986315,'+
		'    \"created_at\": 1624992986315,'+
		'    \"action\": \"pull_request.create\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"JWT9US9FrfXk_KUuW02IZw\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"sloydsf\",'+
		'    \"@timestamp\": 1624992985960,'+
		'    \"created_at\": 1624992985960,'+
		'    \"action\": \"pull_request.create_review_request\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"zpIvtcUoFhzNK0M3-bgY5w\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"michaelhoefer\",'+
		'    \"@timestamp\": 1624991656741,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/workdotcom\",'+
		'    \"name\": \"master\",'+
		'    \"created_at\": 1624991656741,'+
		'    \"action\": \"protected_branch.update_allow_force_pushes_enforcement_level\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"hiNfZneSrYaPApDiz29Gww\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"michaelhoefer\",'+
		'    \"@timestamp\": 1624991656726,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/workdotcom\",'+
		'    \"name\": \"master\",'+
		'    \"created_at\": 1624991656726,'+
		'    \"action\": \"protected_branch.update_admin_enforced\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"ui2rPDjVsywYzKnv7PCSgg\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"michaelhoefer\",'+
		'    \"@timestamp\": 1624991656709,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/workdotcom\",'+
		'    \"name\": \"master\",'+
		'    \"created_at\": 1624991656709,'+
		'    \"action\": \"protected_branch.update_pull_request_reviews_enforcement_level\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"ffr5P6vym63J_WZJxCQZHw\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"michaelhoefer\",'+
		'    \"@timestamp\": 1624991656692,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/workdotcom\",'+
		'    \"name\": \"master\",'+
		'    \"created_at\": 1624991656692,'+
		'    \"action\": \"protected_branch.update_required_status_checks_enforcement_level\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"3aPiWWgYPytDWQAYShX4fQ\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"michaelhoefer\",'+
		'    \"@timestamp\": 1624991649688,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/workdotcom\",'+
		'    \"created_at\": 1624991649688,'+
		'    \"action\": \"protected_branch.policy_override\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"I3QX1ZwBxUbb5HT945vXnA\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"michaelhoefer\",'+
		'    \"@timestamp\": 1624991640509,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/workdotcom\",'+
		'    \"name\": \"master\",'+
		'    \"created_at\": 1624991640509,'+
		'    \"action\": \"protected_branch.update_admin_enforced\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"rhHRm0vw7YhciG2eQmpikQ\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"michaelhoefer\",'+
		'    \"@timestamp\": 1624991640499,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/workdotcom\",'+
		'    \"name\": \"master\",'+
		'    \"created_at\": 1624991640499,'+
		'    \"action\": \"protected_branch.update_pull_request_reviews_enforcement_level\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"WjHKba1dLB0nh4uRe-tBjg\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"michaelhoefer\",'+
		'    \"@timestamp\": 1624991640483,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/workdotcom\",'+
		'    \"name\": \"master\",'+
		'    \"created_at\": 1624991640483,'+
		'    \"action\": \"protected_branch.update_required_status_checks_enforcement_level\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"iwnGa9-K4cZqoA4rRsn2SQ\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"michaelhoefer\",'+
		'    \"@timestamp\": 1624991608222,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/workdotcom\",'+
		'    \"created_at\": 1624991608222,'+
		'    \"action\": \"protected_branch.rejected_ref_update\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"BZmJ4HdkNpya1UvfCIcr-A\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"michaelhoefer\",'+
		'    \"@timestamp\": 1624991588778,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/workdotcom\",'+
		'    \"name\": \"master\",'+
		'    \"created_at\": 1624991588778,'+
		'    \"action\": \"protected_branch.update_allow_force_pushes_enforcement_level\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"fJ1KQxp4iAfUdGl_kF_tjA\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"michaelhoefer\",'+
		'    \"@timestamp\": 1624991521907,'+
		'    \"created_at\": 1624991521907,'+
		'    \"action\": \"pull_request.create_review_request\",'+
		'    \"_document_id\": \"v1ROJJHB2d-7PINhAW2pMw\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"michaelhoefer\",'+
		'    \"@timestamp\": 1624991520581,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/workdotcom\",'+
		'    \"created_at\": 1624991520581,'+
		'    \"action\": \"protected_branch.policy_override\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"b-Bhwk4AelW-s_sbyO0Kjw\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"sloydsf\",'+
		'    \"@timestamp\": 1624991502778,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/workdotcom\",'+
		'    \"name\": \"prerelease\",'+
		'    \"created_at\": 1624991502778,'+
		'    \"action\": \"protected_branch.update_allow_force_pushes_enforcement_level\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"5A2FHZ5GNesYNBmCo_D7qA\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"sloydsf\",'+
		'    \"@timestamp\": 1624991483325,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/digitalworkspace\",'+
		'    \"name\": \"prerelease\",'+
		'    \"created_at\": 1624991483325,'+
		'    \"action\": \"protected_branch.update_allow_force_pushes_enforcement_level\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"9r_LxgDgKFAIA87d7rqX1g\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"michaelhoefer\",'+
		'    \"@timestamp\": 1624991433752,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/workdotcom\",'+
		'    \"created_at\": 1624991433752,'+
		'    \"action\": \"protected_branch.rejected_ref_update\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"dPc14L5dFp9yCspytpddWQ\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"sloydsf\",'+
		'    \"@timestamp\": 1624991408954,'+
		'    \"org\": \"CovidBackToWork\",'+
		'    \"repo\": \"CovidBackToWork/digitalworkspace\",'+
		'    \"name\": \"prerelease\",'+
		'    \"created_at\": 1624991408954,'+
		'    \"action\": \"protected_branch.update_allow_force_pushes_enforcement_level\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"wPw96w-FSHWWNWymBvyr5w\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"annzhang3\",'+
		'    \"@timestamp\": 1624991167872,'+
		'    \"created_at\": 1624991167872,'+
		'    \"action\": \"pull_request.create_review_request\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"3euW3eRbn5mdh-7dR9g_Eg\"'+
		'  },'+
		'  {'+
		'    \"actor\": \"annzhang3\",'+
		'    \"@timestamp\": 1624991122833,'+
		'    \"created_at\": 1624991122833,'+
		'    \"action\": \"pull_request.create_review_request\",'+
		'    \"actor_location\": {'+
		'      \"country_code\": \"US\"'+
		'    },'+
		'    \"_document_id\": \"1_1_rleHodHvfX9MidrJug\"'+
		'  }'+
		']';
		// List<Audit_Log_Entry__c> r = JSONtoAuditLogEntryConversion.parse(json);
		// System.assert(r != null);

		// json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		// Audit_Log_Entry__c.Actor_location objActor_location = new JSONtoAuditLogEntryConversion.Actor_location(System.JSON.createParser(json));
		// System.assert(objActor_location != null);
		// System.assert(objActor_location.country_code == null);

		// json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		// JSONtoAuditLogEntryConversion objJSON2Apex = new JSONtoAuditLogEntryConversion(System.JSON.createParser(json));
		// System.assert(objJSON2Apex != null);
		// System.assert(objJSON2Apex.actor == null);
		// System.assert(objJSON2Apex.timestamp == null);
		// System.assert(objJSON2Apex.visibility == null);
		// System.assert(objJSON2Apex.org == null);
		// System.assert(objJSON2Apex.repo == null);
		// System.assert(objJSON2Apex.created_at == null);
		// System.assert(objJSON2Apex.action == null);
		// System.assert(objJSON2Apex.actor_location == null);
		// System.assert(objJSON2Apex.user == null);
		// System.assert(objJSON2Apex.x_document_id == null);
		// System.assert(objJSON2Apex.name == null);
	}
}