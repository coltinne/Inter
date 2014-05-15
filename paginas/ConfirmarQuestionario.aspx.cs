using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_ConfirmarQuestionario : System.Web.UI.Page
{
    Mod_modelos quest;
    protected void Page_Load(object sender, EventArgs e)
    {
        quest = (Mod_modelos)Session["questionario"]; //Istancia o obj questionario passando a sessao
        lbl_nomeQuestionario.Text = quest.NomeModelo;
        Per_perguntas questao = (Per_perguntas)quest.Questao[0];
        lbl_alternativa1.Text = questao.PerguntaPergunta;
    }
}