using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_CriarQuestao : System.Web.UI.Page
{
    Mod_modelos quest; // Cria variavel do tipo Questionario
    Alt_alternativas alternativa; //Cria variavel tipo alternativa
    Per_perguntas questao; //Cria variavel tipa questao
    int valor = 0; //Instancia o contador de alternativas
    string Values; //Instancia variavel para valores dos campos dinamicos

    protected void Page_Load(object sender, EventArgs e)
    {
        quest = (Mod_modelos)Session["questionario"]; //Instancia o obj Questionario, com os valores vindos da pg anterior
        questao = new Per_perguntas(); // Instancia uma nova questão
        lbl_nomeQuestionario.Text = quest.NomeModelo; //Passa o nome do Questionario pro label
    }
    protected void btn_novo_Click(object sender, EventArgs e)
    {
        salvaQuestionario();
        Response.Redirect("CriarQuestao.aspx"); //Recarrega a pagina
    }
    protected void btn_enviar_Click(object sender, EventArgs e)
    {
        salvaQuestionario();
        Response.Redirect("ConfirmarQuestionario.aspx"); //Redireciona para confirmar o questionario
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    private void salvaQuestionario()
    {
        string nomeAlternativa;
        double pontos;

        questao.PerguntaPergunta = txb_nomeQuestao.Text;

        if (txb_alter1.Text != String.Empty && txb_pontos1.Text != String.Empty)
        {
            nomeAlternativa = txb_alter1.Text;
            Double.TryParse(txb_pontos1.Text, out pontos);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            questao.Alternativa.Add(alternativa);
        }

        if (txb_alter2.Text != String.Empty && txb_pontos2.Text != String.Empty)
        {
            nomeAlternativa = txb_alter2.Text;
            Double.TryParse(txb_pontos2.Text, out pontos);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            questao.Alternativa.Add(alternativa);
        }

        if (txb_alter3.Text != String.Empty && txb_pontos3.Text != String.Empty)
        {
            nomeAlternativa = txb_alter3.Text;
            Double.TryParse(txb_pontos3.Text, out pontos);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            questao.Alternativa.Add(alternativa);
        }

        if (txb_alter4.Text != String.Empty && txb_pontos4.Text != String.Empty)
        {
            nomeAlternativa = txb_alter4.Text;
            Double.TryParse(txb_pontos4.Text, out pontos);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            questao.Alternativa.Add(alternativa);
        }

        if (txb_alter5.Text != String.Empty && txb_pontos5.Text != String.Empty)
        {
            nomeAlternativa = txb_alter5.Text;
            Double.TryParse(txb_pontos5.Text, out pontos);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            questao.Alternativa.Add(alternativa);
        }

        if (txb_alter6.Text != String.Empty && txb_pontos6.Text != String.Empty)
        {
            nomeAlternativa = txb_alter6.Text;
            Double.TryParse(txb_pontos6.Text, out pontos);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            questao.Alternativa.Add(alternativa);
        }

        if (txb_alter7.Text != String.Empty && txb_pontos7.Text != String.Empty)
        {
            nomeAlternativa = txb_alter7.Text;
            Double.TryParse(txb_pontos7.Text, out pontos);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            questao.Alternativa.Add(alternativa);
        }

        quest.Questao.Add(questao); //Adiciona o ojb questão ao questionario
        Session["questionario"] = quest; //Passa o obj questionario para a sessao
    }

    protected void txb_alter3_TextChanged(object sender, EventArgs e)
    {
        txb_alter4.Visible = true;
        txb_pontos4.Visible = true;
        lbl_alter4.Visible = true;
        lbl_pontos4.Visible = true;
    }
    protected void txb_alter4_TextChanged(object sender, EventArgs e)
    {
        txb_alter5.Visible = true;
        txb_pontos5.Visible = true;
        lbl_alter5.Visible = true;
        lbl_pontos5.Visible = true;
    }
    protected void txb_alter5_TextChanged(object sender, EventArgs e)
    {
        txb_alter6.Visible = true;
        txb_pontos6.Visible = true;
        lbl_alter6.Visible = true;
        lbl_pontos6.Visible = true;
    }
    protected void txb_alter6_TextChanged(object sender, EventArgs e)
    {
        txb_alter7.Visible = true;
        txb_pontos7.Visible = true;
        lbl_alter7.Visible = true;
        lbl_pontos7.Visible = true;
    }
    protected void txb_alter1_TextChanged(object sender, EventArgs e)
    {

    }
}