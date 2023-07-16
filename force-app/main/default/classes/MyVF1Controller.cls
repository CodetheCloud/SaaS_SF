public class MyVF1Controller {
   
    public Pagereference pageRef(){
        
        string str = 'https://google.com';
        Pagereference P = new pagereference(str);
        return P;
    }
    
}