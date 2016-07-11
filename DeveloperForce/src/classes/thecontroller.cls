public class thecontroller {
    
    private String firstName;
    private String lastName;
    private String company;
    private String email;
    public String qp {get; set;}
    private String error;
    public String commitFlag {get; set;}
    
    public thecontroller() {
        this.qp = ApexPages.currentPage().getParameters().get('qp');
        this.error = ApexPages.currentPage().getParameters().get('error');
        this.commitFlag = ApexPages.currentPage().getParameters().get('commitFlag');
    }
    
    public String getError() {
        return this.error;
    }
    
    public void setError(String error) {
        this.error = error;
    }
    
    public String getFirstName() {
        return this.firstName;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String getCompany() {
        return this.company;
    }
    
    public void setCompany(String company) {
        this.company = company;
    }
    
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public PageReference save() {
        PageReference p = null;
        
        if (this.qp == null || !'yyyy'.equals(this.qp)) {
            p = Page.failure;
            p.getParameters().put('error', 'noParam');
        } else {
            try {
                Lead newlead = new Lead(LastName=this.lastName, 
                                        FirstName=this.firstName, 
                                        Company=this.company, 
                                        Email=this.email);
                insert newlead;
            } catch (Exception e) {
                p = Page.failure;
                p.getParameters().put('error', 'noInsert');
            }
        }
        
        if (p == null) {
            p = Page.success;
        }
        
        p.setRedirect(true);
        return p;
    }
 }