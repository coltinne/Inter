<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Estatistica.aspx.cs" Inherits="paginas_Estatistica" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server" >
        <asp:Label ID="lbl_selecao" runat="server" Text="Selecione o tipo de pesquisa"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        </asp:DropDownList>
        <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
        </asp:MultiView>
        <asp:MultiView ID="MultiView2" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
        </asp:MultiView>
        <asp:MultiView ID="MultiView3" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
        </asp:MultiView>
    </form>
</asp:Content>

