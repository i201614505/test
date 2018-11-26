package ean13;

public class Barras {
    public static void main(String[] args) {
        //789100031550-(*) Qual é o Dígito verificador ?
        String valid, barCode = "789100031550";        
        int dv = digitEAN(barCode); //Gera digito verificador
        if(dv >= 0){
            System.out.println("Digito Varificador é: " + dv); 
            System.out.println("Codigo de Barras é: " + barCode + "-" + dv);
            //O Código de Barras é Válido ?
            valid = isValidEAN(barCode.concat(String.valueOf(dv))) == true ? "Válido" : "Inválido";
            System.out.println("Código: " + valid);       
        }else{
            System.out.println("barCode Inválido !!");             
        }                  
    }    
    public static boolean isValidEAN(String barCode) {
        int digit = Integer.parseInt(String.valueOf(barCode.charAt(barCode.length() - 1)));        
        return ((barCode.length() == 8 || barCode.length() == 13) && 
                (digit == (10 - (calculaEAN(barCode) % 10))));
    }      
    private static int calculaEAN(String barCode) {
        int sum = 0;        
        for(int i = 0, check = 1; i < barCode.length() - 1; i++) {            
            sum += (Integer.parseInt(String.valueOf(barCode.charAt(i)))) * check;
            check = (check == 1) ? 3 : 1;             
        }                
        return sum;
    }       
    private static int digitEAN(String barCode) {
        int s = calculaEAN(barCode), aux = s;      
        String[] str;
        if(barCode.length() == 12){
            if(s % 10 == 0){
                return 0;            
            }else{
                while(!(aux % 10 == 0)){                    
                    aux++;                    
                }     
                return aux - s;
            }              
        }else if(barCode.length() == 7){            
            str = barCode.split("");
            aux = n(str[2]) + n(str[4]) + n(str[6]);
            s = n(str[1]) + n(str[3]) + n(str[5]) + n(str[7]);
            return (10 - ((s * 3 + aux) % 10));
        } 
        return -1;        
    }    
    private static int n(String num) {
        return Integer.parseInt(num);
    }
}