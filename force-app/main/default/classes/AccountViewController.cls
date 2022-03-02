public with sharing class AccountViewController
{
    private ApexPages.StandardSetController standardController;
    public AccountViewController(ApexPages.StandardSetController standardController)
    {
        this.standardController = standardController;
    }
   
    
    public PageReference displayingSelectedRecords()
    {
        // Call StandardSetController 'save' method to update (optional, you can use your own DML)
        return standardController.save();
    }
}