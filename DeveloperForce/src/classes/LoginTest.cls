public class LoginTest {

    public String getDestURL() {
        // return 'http://www.google.com';
         return 'https://na15.salesforce.com/secur/frontdoor.jsp?sid=' + getMysessionid();
        //return 'http://bwpjunk.com/bad.jsp?sid=' + getMysessionid();
        
    }


    public String getMysessionid() {
        return UserInfo.getSessionId();
    }


}