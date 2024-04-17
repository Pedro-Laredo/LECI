package aula06;

public class Contactos {
    private Pessoa pessoa;
    private String numero;
    private String email;
    private static int nextId = 0;
    private int id;
    
    public Contactos(Pessoa p, String numero,String email){
        this.pessoa = p;
        this.numero = numero;
        this.email = email;
        this.id = ++nextId;
    }
    public Pessoa getPessoa(){
        return pessoa;
    }
    public String getTelefone(){
        return numero;
    }
    public String getEmail(){
        return email;
    }
    public int getId(){
        return id;
    }
    public boolean validadorNum(String numero) {
        if(numero.length() < 9 || numero.charAt(0)!='9' ) {
            return false;
        } else {
            return true;
        }
    }
    public boolean validadorEmail(String email) {
        boolean estado1 = false;
        boolean estado2 = false;
        if (email.contains("@")) {
            estado1 = true;
            String[] partesDomain = email.split("@");
            if (partesDomain.length == 2) {
                String[] partes2 = partesDomain[1].split("\\.");
                if (partes2.length > 1) {
                    String ultimoParte = partes2[partes2.length - 1];
                    if (!ultimoParte.isEmpty()) {
                        estado2 = true;
                    }
                }
            }
        }
        return estado1 && estado2;
    }
    
    
    
}
