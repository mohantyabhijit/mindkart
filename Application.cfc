/*
*
 * Application
 *
 * @author abhijitm
 * @date 8/19/16
 **/
component {

function init()
{


}
this.name = "mindkart";
this.applicationTimeout = CreateTimeSpan (10, 0, 0, 0);
this.sessionTimeout = CreateTimeSpan ( 0, 1, 20, 0);
this.datasource = "mindkart";
this.sessionManagement = true;


function onApplicationStart()
	{
		session.loggedin = false;
		session.id = "";
		session.name = "";

		return true;
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



