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

}