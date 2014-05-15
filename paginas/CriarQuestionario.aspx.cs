using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_CriarQuestionario : System.Web.UI.Page
{
    Mod_modelos quest = new Mod_modelos(); //Instancia o Objeto Questionario
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btn_continuar_Click(object sender, EventArgs e)
    {
        quest.NomeModelo = txb_nomeQuestionario.Text; //Passa o texto do textBox Para o obj Questionario
        Session["questionario"] = quest; //Passa o obj Questionario para sessao
        Response.Redirect("CriarQuestao.aspx"); //Redireciona para pagina de criar alternativas
    }
}