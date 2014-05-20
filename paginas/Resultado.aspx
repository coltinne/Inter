<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="Resultado.aspx.cs" Inherits="paginas_Resultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        #txt_observacao {
            height: 88px;
            width: 237px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">

        <asp:Label ID="lbl_pontuacao" runat="server" Text="Label" CssClass="titulo"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lbl_resultado" runat="server" Text="Label" CssClass="titulo"></asp:Label>

        <asp:Label ID="lbl_descricao" runat="server" Text="Label" CssClass="texto"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lbl_observacao" runat="server" Text="Observações" CssClass="texto"></asp:Label>
        <input id="txt_observacao" type="text" />
        <br />
        <asp:Button ID="btn_imprimr" runat="server" Text="Imprimir" CssClass="botao" />
        <asp:Button ID="btn_email" runat="server" Text="Enviar Por email" CssClass="botao" />


    </form>
</asp:Content>

