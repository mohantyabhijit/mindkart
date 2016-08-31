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
this.sessionTimeout = CreateTimeSpan ( 0, 0, 20, 0);
this.datasource = "mindkart";
this.sessionManagement = true;

//when application starts
function onApplicationStart()
	{
		WriteLog( text="Application started successfully.", type="Information", file="logMindkart" );
		return true;

	}
//when session starts intialise session variables needed
function onSessionStart()
	{
			session.cartInfo = ArrayNew(1);
			WriteLog(text="Session started successfully.", type="Information", file="logMindkart");
			return true;
	}
//create objects for request handling
function onRequestStart()
	{
		request.signupValidation = CreateObject ("component","models.server-side-validation");
		request.dbOperation = CreateObject ("component","models.db-operations");
		WriteLog(text="Request started successfully.", type="Information", file="logMindkart");
		return true;
	}
//when requests end
function onRequestEnd()
	{
		WriteLog(text="Request ended successfully.", type="Information", file="logMindkart");
	}

function onSessionEnd( struct SessionScope, struct ApplicationScope )
	{
		WriteLog(text="Session ended successfully.", type="Information", file="logMindkart");

	}
//when application stops
function onApplicationEnd( struct ApplicationScope )
	{
		WriteLog(text="Application ended successfully.", type="Information", file="logMindkart");
	}
//when some error occurs
function onError( any Exception, string EventName )
{
writedump(Exception);

}




}



