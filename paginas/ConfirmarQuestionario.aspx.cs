using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_ConfirmarQuestionario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Questionario quest = (Questionario)Session["questionario"]; //Istancia o obj questionario passando a sessao
        //Passa os valores para os labels
        lbl_nomeQuestionario.Text = quest.NomeQuestionario;
        lbl_alternativa1.Text = quest.NomeQuestao[0].ToString();
        lbl_alternativa2.Text = quest.NomeQuestao[1].ToString();
        lbl_alternativa3.Text = quest.NomeQuestao[2].ToString();
        lbl_alternativa4.Text = quest.NomeQuestao[3].ToString();

    }
}