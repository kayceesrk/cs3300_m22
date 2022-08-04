#defineExpr0 NUM() (10+0)
#defineExpr0 ONE() (1+0)
class Factorial{
    public static void main(String[] a){
        System.out.println(new Fac().ComputeFac(NUM()));
    }
}

class Fac {
    public int ComputeFac(int num){
        int num_aux ;
        if ((num <= 1)&&(num != 1))
            num_aux = ONE() ;
        else
            num_aux = num * (this.ComputeFac(num-1)) ;
        return num_aux ;
    }
}
