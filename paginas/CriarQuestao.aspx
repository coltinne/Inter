<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="CriarQuestao.aspx.cs" Inherits="paginas_CriarQuestao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../script/funcoes.js"></script>
    <form id="Form1" runat="server">
        <asp:Label ID="lblModelo" runat="server" Text="Modelo: " CssClass="texto"></asp:Label>
        <asp:Label ID="lbl_nomeQuestionario" runat="server" Font-Bold="true" CssClass="texto"></asp:Label>
        <br />
        <asp:Label ID="lbl_nomeQuestao" runat="server" Text="Titulo da Questão: " CssClass="texto"></asp:Label>
        <asp:TextBox ID="txb_nomeQuestao" runat="server" OnTextChanged="TextBox1_TextChanged" Width="147px" Font-Bold="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txb_nomeQuestao" ErrorMessage="Preenchimento Obrigatório" ForeColor="Red" CssClass="textoAlerta"></asp:RequiredFieldValidator>
        <br />
        <div id="TextBoxContainer">
            <input type="text" name="textfield" id="controle" runat="server" hidden="hidden" />
            Alternativa:
            <input type="text" name="textfield" id="txt_0" runat="server" />
            <br />
            Alternativa:
            <input type="text" name="textfield" id="txt_1" runat="server" />
            <br />
            Alternativa:
            <input type="text" name="textfield" id="txt_2" runat="server" />
        </div>

       
            <input type="submit" name="Submit" value="Adicionar Alternativa" onclick="novoTextDiv(); return false;" class="botao" />
            <br />
            <br />
            <asp:Button ID="btn_novo" runat="server" Text="Nova Pergunta" OnClick="btn_novo_Click" CssClass="botao" />
            <asp:Button ID="btn_enviar" runat="server" Text="Finalizar" OnClick="btn_enviar_Click" CssClass="botao" />
      
    </form>
</asp:Content>


