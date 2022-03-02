public class AccountListView {
public List<Product2> proList {get;set;}
    private ApexPages.StandardSetController standardController;
    private Set<Id> proIds = new Set<Id>();

    public AccountListView(ApexPages.StandardSetController standardController){
        this.standardController = standardController;
        proList = new List<Product2>();
        for (Product2 pro : (List<Product2>)standardController.getSelected()){ 
            proIds.add(pro.Id);
        }
        proList = [SELECT Name FROM Product2 WHERE ID IN: proIds];
    }
}