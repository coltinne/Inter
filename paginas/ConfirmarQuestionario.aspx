<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ConfirmarQuestionario.aspx.cs" Inherits="paginas_ConfirmarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:Label ID="lbl_nomeQuestionario" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lbl_alternativa1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>
            <asp:ListItem>Alternativa 2</asp:ListItem>
            <asp:ListItem>Alternativa 3</asp:ListItem>
            <asp:ListItem>Alternativa 4</asp:ListItem>
            <asp:ListItem>Alternativa 5</asp:ListItem>
            <asp:ListItem>Alternativa 6</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="lbl_alternativa2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>
            <asp:ListItem>Alternativa 2</asp:ListItem>
            <asp:ListItem>Alternativa 3</asp:ListItem>
            <asp:ListItem>Alternativa 4</asp:ListItem>
            <asp:ListItem>Alternativa 5</asp:ListItem>
            <asp:ListItem>Alternativa 6</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="lbl_alternativa3" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList3" runat="server">
            <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>
            <asp:ListItem>Alternativa 2</asp:ListItem>
            <asp:ListItem>Alternativa 3</asp:ListItem>
            <asp:ListItem>Alternativa 4</asp:ListItem>
            <asp:ListItem>Alternativa 5</asp:ListItem>
            <asp:ListItem>Alternativa 6</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="lbl_alternativa4" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList4" runat="server">
            <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>
            <asp:ListItem>Alternativa 2</asp:ListItem>
            <asp:ListItem>Alternativa 3</asp:ListItem>
            <asp:ListItem>Alternativa 4</asp:ListItem>
            <asp:ListItem>Alternativa 5</asp:ListItem>
            <asp:ListItem>Alternativa 6</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="bnt_modificar" runat="server" Text="Modificar" />
        <asp:Button ID="bnt_confirmar" runat="server" Text="Confirmar" />
    </form>
</asp:Content>

