public class productController {
    
public Product2 po{get{
Product2 a=[Select ID,Name from Product2 Limit 1];
return a;}
set;}
    public boolean displayPopup {get; set;}     
    
    public void closePopup() {        
        displayPopup = false;    
    }     
    public void showPopup() {        
        displayPopup = true;    
    }
    
  }