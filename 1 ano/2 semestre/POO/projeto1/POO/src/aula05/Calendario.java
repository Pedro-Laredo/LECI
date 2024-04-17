package aula05;



public class Calendario {
    int year;
    int firstWeekdayOfYear;
    int[][] events;
    String[] mesesDoAno = {
        "Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"
    };

    public Calendario(int year, int firstWeekdayOfYear) {
        this.year = year;
        this.firstWeekdayOfYear = firstWeekdayOfYear;
        this.events = new int[12][31];
    }

    public int firstWeekdayOfYear() {
        return firstWeekdayOfYear;
    }

    public int year(){
        return year;
    }
    public int firstWeekdayOfMonth(int month) {
        int diasPassados = 0;
        for (int i = 1; i < month; i++) {
            diasPassados += DateYMD.monthDays(year, i);
        }
        
        int firstWeekday = (firstWeekdayOfYear + diasPassados) % 7;
        
        if (firstWeekday == 0) {
            return 7;
        } else {
            return firstWeekday; 
        }
    }
    public void addEvent(DateYMD date){
        int month = date.month();
        int day = date.day();
        events[month-1][day]++;
    }
    public void removeEvent(DateYMD date) {
        int month = date.month();
        int day = date.day();
        if (this.events[month-1][day] > 0) {
            this.events[month-1][day]--;
        }
    }
    public String printMonth(int month) {
        StringBuilder result = new StringBuilder();
        result.append("   Sun   Mon   Tue   Wed   Thu   Fri   Sat\n");
        int firstWeekday = firstWeekdayOfMonth(month);
        for (int i = 1; i < firstWeekday; i++) {
            result.append("      ");
        }
        for (int day = 1; day <= DateYMD.monthDays(year, month); day++) {
            String dayString = String.valueOf(day);
            if (events[month - 1][day - 1] > 0) {
                dayString = "*" + dayString;
            }
            int numSpaces = 6 - dayString.length();
            for (int i = 0; i < numSpaces; i++) {
                result.append(" ");
            }
            result.append(dayString);
            if ((day + firstWeekday-1) % 7 == 0 || day == DateYMD.monthDays(year, month)) {
                result.append("\n");
            }
        }
        return result.toString();
    }
    
    
    @Override
    public String toString() {
        StringBuilder result = new StringBuilder();
        for (int i = 1; i <= 12; i++) {
            result.append(mesesDoAno[i-1]).append(" ").append(year).append(":\n");
            result.append(printMonth(i)).append("\n");
        }
        return result.toString();
    }

    public static void main(String[] args) {
        Calendario calendar = new Calendario(2024, 3);

        calendar.addEvent(new DateYMD(5, 3, 2024));


        System.out.println("Calendar for year 2024:\n" + calendar);
    }
}




