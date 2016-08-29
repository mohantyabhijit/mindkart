/**
 * session-management
 *
 * @author abhijitm
 * @date 8/28/16
 **/
component sessionManagement accessors=true output=false persistent=false {

public void function sessionChecker()
	{
			if ( Len (session.id) == 0)
			{
				location (url : "/mindkart/index.cfm");
			}
			else
			{
				session.loggedin = true;
				session.id = session.CFID;
			}

	}
}