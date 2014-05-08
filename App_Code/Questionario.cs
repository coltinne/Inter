using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Questionario
/// </summary>
public class Questionario
{
    ArrayList nomeQuestao = new ArrayList();
    ArrayList nomeAlternativa = new ArrayList();
    int contador;
    string nomeQuestionario;

    public ArrayList NomeAlternativa
    {
        get { return nomeAlternativa; }
        set { nomeAlternativa = value; }
    }

    public Questionario()
    {
        this.contador = 0;
    }

    public string NomeQuestionario
    {
        get { return nomeQuestionario; }
        set { nomeQuestionario = value; }
    }

    public ArrayList NomeQuestao
    {
        get { return nomeQuestao; }
        set { nomeQuestao = value; }
    }

    public int Contador
    {
        get { return contador; }
        set { contador = value; }
    }
}