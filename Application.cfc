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
}
function onRequestStart()
	{
		request.signupValidation = CreateObject ("component","models.server-side-validation");
		request.dbOperation = CreateObject ("component","models.db-operations");

	}

//function onError ()
	//{
		//location ("/mindkart/index.cfm");
	//}

}



