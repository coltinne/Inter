<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="CriarQuestionario.aspx.cs" Inherits="paginas_CriarQuestionario" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server" >
        <asp:Label ID="lbl_nomeQuestionario" runat="server" Text="Nome do Questionário: " CssClass="texto"></asp:Label>
        <asp:TextBox ID="txb_nomeQuestionario" runat="server" OnTextChanged="TextBox1_TextChanged" CssClass="caixaTexto" Width="258px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="textoAlerta" runat="server" ErrorMessage="Preenchimento Obrigatório" ControlToValidate="txb_nomeQuestionario"></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Button ID="btn_continuar" runat="server" Text="Continuar" CssClass="botao" OnClick="btn_continuar_Click"  />
    </form>
</asp:Content>

