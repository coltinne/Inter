<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="Resultado.aspx.cs" Inherits="paginas_Resultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="btn_imprimr" runat="server" Text="Imprimir" />
        <asp:Button ID="btn_email" runat="server" Text="Enviar Por email" />
    </form>
</asp:Content>

