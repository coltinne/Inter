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
    Questionario quest;
    int valor = 0;
    protected string Values;
    protected void Page_Load(object sender, EventArgs e)
    {
        quest = (Questionario)Session["questionario"];
        lbl_nomeQuestionario.Text = "Modelo: " + quest.NomeQuestionario;
        string[] textboxValues = Request.Form.GetValues("DynamicTextBox");
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        this.Values = serializer.Serialize(textboxValues);
    }
    protected void btn_novo_Click(object sender, EventArgs e)
    {
        quest.NomeQuestao.Add(txb_nomeQuestao.Text);
        quest.Contador++;
        quest.NomeAlternativa.Add(txt_0.Value);
        Session["questionario"] = quest;
        Response.Redirect("CriarQuestao.aspx");
    }
    protected void btn_enviar_Click(object sender, EventArgs e)
    {
        quest.NomeQuestao.Add(txb_nomeQuestao.Text);
        Session["questionario"] = quest;
        Response.Redirect("ConfirmarQuestionario.aspx");
    }

    public void setValor(int valor)
    {
        this.valor = valor;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}