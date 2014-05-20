﻿<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="CriarModelo.aspx.cs" Inherits="paginas_CriarQuestionario" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #TextArea1 {
            height: 78px;
            width: 232px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server" >
        <asp:Label ID="lbl_nomeModelo" runat="server" Text="Nome do Modelo: " CssClass="texto"></asp:Label>
        <asp:TextBox ID="txb_nomeModelo" runat="server" OnTextChanged="TextBox1_TextChanged" CssClass="caixaTexto" Width="258px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="textoAlerta" runat="server" ErrorMessage="Preenchimento Obrigatório" ControlToValidate="txb_nomeModelo"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lbl_nomeEvento" runat="server" CssClass="texto" Text="Nome do Evento: "></asp:Label>
        <asp:DropDownList ID="ddl_nomeEvento" CssClass="caixaTexto" runat="server">
            <asp:ListItem Value="2010">2010</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="lbl_descricao" runat="server" CssClass="texto" Text="Descrição: "></asp:Label>

        <textarea id="txt_descricao" cols="20" name="S1" rows="1"></textarea><br />

        <br />

        <asp:Button ID="btn_continuar" runat="server" Text="Continuar" CssClass="botao" OnClick="btn_continuar_Click"  />
    </form>
</asp:Content>

