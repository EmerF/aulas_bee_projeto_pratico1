package projeto1tests;

public class Login {
    public String login(String user) {
        if(user.equals("erro")){
            return "Erro";
        }
        return "ok";
    }
}