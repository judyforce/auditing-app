({
    // code in the helper is reusable by both
    // the controller.js and helper.js files
    handleSearch: function( component, searchTerm ) {
        var action = component.get( "c.searchLogs" );
        action.setParams({
            searchTerm: searchTerm
        });
        action.setCallback( this, function( response ) {
            var event = $A.get( "e.c:AuditLogEntriesLoaded" );
            event.setParams({
                "audit_log_entries": response.getReturnValue()
            });
            event.fire();
        });
        $A.enqueueAction( action );
    }
})