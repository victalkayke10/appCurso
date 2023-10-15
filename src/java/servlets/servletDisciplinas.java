package servlets;

import jakarta.json.Json;
import jakarta.json.JsonArray;
import jakarta.json.JsonArrayBuilder;
import jakarta.json.JsonObject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "servletDisciplinas", urlPatterns = {"/victal.json"})
public class servletDisciplinas extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        JsonArray disciplinasArray = getDisciplinas();

        JsonObject aluno = Json.createObjectBuilder()
            .add("disciplinas", disciplinasArray)
            .build();

        response.getWriter().write(aluno.toString());
    }

    private JsonArray getDisciplinas() {
        JsonArrayBuilder disciplinasArray = Json.createArrayBuilder();
        disciplinasArray.add("Programação Orientada a Objetos");
        disciplinasArray.add("Banco de Dados");
        disciplinasArray.add("Inglês");
        disciplinasArray.add("Sistemas Operacionais II");
        disciplinasArray.add("Engenharia de Software III");
        disciplinasArray.add("Linguagem de programação IV");
        disciplinasArray.add("Metodologia de Pesquisa Cientifica");
        disciplinasArray.add("Ética e Responsabilidade Profissional");
        // Adicione outras disciplinas aqui

        return disciplinasArray.build();
    }
}
