/**
 * An apex page controller that takes the user to the right start page based on credentials or lack thereof
 */
public with sharing class CommunitiesLandingController {
    
    // Code we will invoke on page load.
    public PageReference forwardToStartPage() {
        return Network.communitiesLanding();
    }
    
    // BPaul Begin added on 12/13/13
    // Code we will invoke on page load.
    public PageReference forwardToCustomAuthPage() {
        if(UserInfo.getUserType() == 'Guest'){
            return new PageReference('/CustomLogin');
        }
        else{
            return null;
        }
    }
    // BPaul End added on 12/13/13
    
    public CommunitiesLandingController() {}
}