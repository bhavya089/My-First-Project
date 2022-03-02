global class CaseJsonparser2 {
global CaseJsonParser2(){
    }
    
    global customerDetails customerDetails{get;set;}
    global class customerDetails {
        public String firstName{get;set;}
        public String lastName{get;set;}
        public String email{get;set;}
    }
}