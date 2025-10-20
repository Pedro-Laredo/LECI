package aula05;

public class DateYMD {
    private int day;
    private int month;
    private int year;

    public DateYMD(int day, int month, int year){
        if(valid(year,month,day)){
            this.day = day;
            this.month=month;
            this.year = year;
        }
        else{
            System.out.print("Data inválida\n");
        }
    }
    public int month() {
        return month;
    }
    public int day(){
        return day;
    }
    public int year(){
        return year;
    }
    static boolean validMonth(int month){
        if(1<=month && month<=12){
            return true;
        }
        else{
            return false;
        }
    }
    static boolean leapYear(int year){
        if(year%100==0 && year%4==0){
            if(year%400==0){
                return true;
            }
            else{
                return false;
            }
        }
        if(year%4==0){
            return true;
        }
        else{
            return false;
        }
    }
    static int monthDays(int year, int month){
        if(month==2){
            if (leapYear(year) == true){
                return 29;
            }
        }
        if(month ==1 || month==3 || month==5 || month==7 || month==8 || month==10 || month==12){
            return 31;
        }
        else{
            return 30;
        }
        
    }
    static boolean valid(int year, int month, int day){
        if(year>0){
            if(month==2){
                if (leapYear(year)==true){
                    if(day!=29){
                        return false;
                    }
                    else{
                        return true;
                    }
                }
            }
            if(validMonth(month)==true){
                if( 0<day && day<=monthDays(year, month)){
                    return true;
                }
                else{
                    return false;
                }
            }
            else{
                return false;
            }
        }
        else{
            return false;
        }
    }
    public void decrement(){
        if(day==1){
            if(month==1){
                month = 12;
                year--;
            }
            else{
                month--;
            }
            day = monthDays(year, month);
        }
        else{
            day--;
        }
    }
    public void increment(){
        if(day==monthDays(year, month)){
            if(month==12){
                month=1;
                year++;
            }
            else{
                month++;
            }
        }
        else{
            day++;
        }
    }
    void set(int day, int month, int year){
        if(valid(year, month, day)){
            this.day = day;
            this.month = month;
            this.year = year;
        }
        
    }
    
    @Override
    public String toString() {
        if(valid(year,month,day)){
            return String.format("%04d-%02d-%02d", year, month, day);
        }
        else{
            return null;
        }
    }
}
