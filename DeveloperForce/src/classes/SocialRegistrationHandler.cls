global class SocialRegistrationHandler implements Auth.RegistrationHandler{

global User createUser(Id portalId, Auth.UserData data){
    if(data.attributeMap.containsKey('sfdc_networkid')) {
        //We have a community id, so create a user with community access
        //TODO: Get an actual account
        System.debug('BWPDebug We have a community id, so create a user ' + data.username + ' with community access');
        System.debug('BWPDebug Other values passed in via Auth.UserData is ' + data);
        System.debug('BWPDebug Try to find a user object with the email of ' + data.email);
//        User[] ulist = [SELECT Id, FirstName, LastName, Name FROM user WHERE email=:data.email];
        
//        if (ulist == null) {
//            System.debug('BWPDebug could not find user');
//        } else {
//            for (User u : ulist) {
//                System.debug('BWPDebug found user with id='+ u.Id + ' FirstName=' + u.FirstName + ' LastName=' + u.LastName + ' Name= ' + u.Name);
//            }
//        }
//        return null;
       
        User u = [SELECT Id FROM user WHERE email=:data.email];
        return u;
//        Account a = [SELECT Id FROM account WHERE name='Customers'];
//        Contact c = new Contact();
//        c.accountId = a.Id;
//        c.email = data.email;
//        c.firstName = data.firstName;
//        c.lastName = data.lastName;
//        insert(c);

        //TODO: Customize the username and profile. Also check that the username doesn't already exist and
        //possibly ensure there are enough org licenses to create a user. Must be 80 characters or less.
//        User u = new User();
//        Profile p = [SELECT Id FROM profile WHERE name='Standard User'];
//        u.username = data.username + '@acmecorp_bp.com';
//        u.email = data.email;
//        u.lastName = data.lastName;
//        u.firstName = data.firstName;
//        String alias = data.username;
//        //Alias must be 8 characters or less
//        if(alias.length() > 8) {
//            alias = alias.substring(0, 8);
//        }
//        u.alias = alias;
//        u.languagelocalekey = UserInfo.getLocale();
//        u.localesidkey = UserInfo.getLocale();
//        u.emailEncodingKey = 'UTF-8';
//        u.timeZoneSidKey = 'America/Los_Angeles';
//        u.profileId = p.Id;
//        u.contactId = c.Id;
//        return u;
    } else {
        //This is not a community, so create a regular standard user
        System.debug(Logginglevel.ERROR, 'We DONT have a community id, so create a regular standard user');
        System.debug('Other values passed in via Auth.UserData is ' + data);
        User u = new User();
//        Profile p = [SELECT Id FROM profile WHERE name='Standard User'];
//        //TODO: Customize the username. Also check that the username doesn't already exist and
//        //possibly ensure there are enough org licenses to create a user. Must be 80 characters
//        //or less.
//        u.username = data.username + '@myorg_bp.com';
//        u.email = data.email;
//        u.lastName = data.lastName;
//        u.firstName = data.firstName;
//        String alias = data.username;
//        //Alias must be 8 characters or less
//        if(alias.length() > 8) {
//            alias = alias.substring(0, 8);
//        }
//        u.alias = alias;
//        u.languagelocalekey = UserInfo.getLocale();
//        u.localesidkey = UserInfo.getLocale();
//        u.emailEncodingKey = 'UTF-8';
//        u.timeZoneSidKey = 'America/Los_Angeles';
//        u.profileId = p.Id;
        return u;
    }
}

global void updateUser(Id userId, Id portalId, Auth.UserData data){
    System.debug(Logginglevel.ERROR, 'inside updateUser');
    System.debug('Other values passed in via Auth.UserData is ' + data);
//    User u = new User(id=userId);
//    u.lastName = data.lastName;
//    u.firstName = data.firstName;
//    update(u);
}
}