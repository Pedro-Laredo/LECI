    package aula06;
    import aula05.DateYMD;

    public class Aluno extends Pessoa {
        private static int proximoNumeroMecanografico = 100;
        private int numeroMecanografico;
        private DateYMD dataInsc;
        
        public Aluno(String nome, int cc, DateYMD dataNasc, DateYMD dataInsc) {
            super(nome, cc, dataNasc);
            this.numeroMecanografico = proximoNumeroMecanografico++;
            this.dataInsc = dataInsc;
        }
        public int getNmMecanografico(){
            return numeroMecanografico;
        }
        public DateYMD getDataInsc(){
            return dataInsc;
        }
        @Override
        public String toString(){
            return super.toString() +" Nmr: " + numeroMecanografico + " data de inscrição: " + dataInsc;
        }
    }
