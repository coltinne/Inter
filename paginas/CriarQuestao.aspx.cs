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
    Questionario quest; // Cria variavel do tipo Questionario
    int valor = 0; //Instancia o contador de alternativas
    string Values; //Instancia variavel para valores dos campos dinamicos

    //"Modelo: " + 
    protected void Page_Load(object sender, EventArgs e)
    {
        quest = (Questionario)Session["questionario"]; //Instancia o obj Questionario, com os valores vindos da pg anterior
        lbl_nomeQuestionario.Text = quest.NomeQuestionario; //Passa o nome do Questionario pro label
        string[] textboxValues = Request.Form.GetValues("DynamicTextBox"); //Pega info sobre os textbox
        JavaScriptSerializer serializer = new JavaScriptSerializer(); 
        this.Values = serializer.Serialize(textboxValues); //Salva info dos textbox
    }
    protected void btn_novo_Click(object sender, EventArgs e)
    {
        quest.NomeQuestao.Add(txb_nomeQuestao.Text); //Adiciona o nome da questão ao obj 
        quest.Contador++; //Aumenta o contador do numero de questoes
        //quest.NomeAlternativa.Add(txt_0.Value); 
        Session["questionario"] = quest;  //Passa novamento o obj para sessao
        Response.Redirect("CriarQuestao.aspx"); //Recarrega a pagina
    }
    protected void btn_enviar_Click(object sender, EventArgs e)
    {
        quest.NomeQuestao.Add(txb_nomeQuestao.Text);
        Session["questionario"] = quest; //Passa o obj questionario para a sessao
        Response.Redirect("ConfirmarQuestionario.aspx"); //Redireciona para confirmar o questionario
    }


    //Metodo para receber a quantidade de alternativas que vem do JS
    public void setValor(int valor)
    {
        this.valor = valor;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}