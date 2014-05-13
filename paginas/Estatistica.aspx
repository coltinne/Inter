<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Estatistica.aspx.cs" Inherits="paginas_Estatistica" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../script/FusionCharts.js"></script>
    <script src="../script/jquery.min.js"></script>
    <form id="Form1" runat="server" >
        <script src="../script/FusionCharts.js"></script>
        <asp:Label ID="lbl_selecao" runat="server" Text="Selecione o tipo de pesquisa" CssClass="texto"></asp:Label>
        <asp:DropDownList ID="ddl_pesquisa" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Selected="True">None</asp:ListItem>
            <asp:ListItem Value="0">Classificação</asp:ListItem>
            <asp:ListItem Value="1">Idade</asp:ListItem>
            <asp:ListItem Value="2">Semestre</asp:ListItem>
        </asp:DropDownList>
        <br />
        <div id ="grafico"><asp:Literal ID="ltl_chart" runat="server"></asp:Literal></div>
        
    </form>
</asp:Content>

