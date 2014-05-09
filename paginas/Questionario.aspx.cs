using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_Questionario : System.Web.UI.Page
{
    string pontos;    
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void rbl_alternativas2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btn_enviar_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < 11; i++)
        {
            string teste = "rbl_alternativas" + i + ".SelectedValue";
            pontos += teste;
        }
        //this.pontos = pontos;
        //Session["pontos"] = this.pontos;
        //lbl_text.Text = Session["pontos"].ToString();
        lbl_text.Text = pontos;
    }

    protected void rbl_alternativas0_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}