({
    onAccountsLoaded: function( component, event, helper ) {
        var cols = [
            {
                'label': 'Date & Time',
                'fieldName': 'Timestamp__c',
                'type': 'datetime'
            },
            {
                'label': 'Github Username',
                'fieldName': 'Github_User__c',
                'type': 'text'
            },
            {
                'label': 'Action',
                'fieldName': 'Action__c',
                'type': 'text'
            },
            {
                'label': 'Repo',
                'fieldName': 'Repository__c',
                'type': 'text'
            },
            {
                'label': 'Branch Name',
                'fieldName': 'Branch_Name__c',
                'type': 'text'
            },
            {
                'label': 'Access Recipient',
                'fieldName': 'Access_Recipient__c',
                'type': 'text'
            },
            {
                'label': 'Country Code',
                'fieldName': 'Country_Code__c',
                'type': 'text'
            },
            {
                'label': 'Org',
                'fieldName': 'Org__c',
                'type': 'text'
            },
            {
                'label': 'Document ID',
                'fieldName': 'Document_ID__c',
                'type': 'text'
            },
            // {
            //     'label': 'Action',
            //     'type': 'button',
            //     'typeAttributes': {
            //         'label': 'View details',
            //         'name': 'view_details'
            //     }
            // }
        ];
        component.set( 'v.cols', cols );
        component.set( 'v.rows', event.getParam( 'audit_log_entries' ) );
    },
    onRowAction: function( component, event, helper ) {
        var action = event.getParam( 'action' );
        var row = event.getParam( 'row' );
        if ( action.name == 'view_details' ) {
            var navigation = component.find( 'navigation' );
            navigation.navigate({
                'type': 'standard__recordPage',
                'attributes': {
                    'objectApiName': 'Audit_Log_Entry__c',
                    'recordId': row.Id,
                    'actionName': 'view'
                }
            });
        }
    }
})