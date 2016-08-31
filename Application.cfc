/*
*
 * Application
 *
 * @author abhijitm
 * @date 8/19/16
 **/
component {

this.name = "mindkart";
this.applicationTimeout = CreateTimeSpan (10, 0, 0, 0);
this.sessionTimeout = CreateTimeSpan ( 0, 1, 20, 0);
this.datasource = "mindkart";
this.sessionManagement = true;


function onApplicationStart()
	{
		return true;
	}
function onSessionStart()
	{
			session.loggedin = false;
			session.name = "";
			session.cartInfo = ArrayNew(1);
	}
function onRequestStart()
	{
		request.signupValidation = CreateObject ("component","models.server-side-validation");
		request.dbOperation = CreateObject ("component","models.db-operations");
	}
function onRequestEnd() {}

function onSessionEnd( struct SessionScope, struct ApplicationScope ) {}

function onApplicationEnd( struct ApplicationScope ) {}

function onError( any Exception, string EventName ) {}
//function onError ()
	//{
		//location ("/mindkart/index.cfm");
	//}

}



