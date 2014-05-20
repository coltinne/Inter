<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="SelecaoEstatistica.aspx.cs" Inherits="paginas_SelecaoEstatistica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:Label ID="lbl_basePesquisa" runat="server" CssClass="texto" Text="Base da Pesquisa:"></asp:Label>
        <asp:DropDownList ID="ddl_tipoPesquisa" runat="server" CssClass="caixaAlternativa">
            <asp:ListItem>Pontuaçao</asp:ListItem>
            <asp:ListItem>Respostas</asp:ListItem>
            <asp:ListItem>Tipos de Investidor</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="lbl_comparacao" runat="server" CssClass="texto" Text="Comparação de dados:"></asp:Label>
        <asp:DropDownList ID="ddl_comparacao" runat="server" CssClass="caixaAlternativa">
            <asp:ListItem>Idade</asp:ListItem>
            <asp:ListItem>Tipo de Visitante</asp:ListItem>
            <asp:ListItem>Semestre do Aluno</asp:ListItem>
            <asp:ListItem>Semestre</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="lbl_evento" runat="server" CssClass="texto" Text="Evento:"></asp:Label>
        <asp:DropDownList ID="ddl_eventoInicio" runat="server" CssClass="caixaAlternativa">
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddl_eventoFim" runat="server" CssClass="caixaAlternativa">
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
        </asp:DropDownList>
        <br />
    </form>
</asp:Content>

