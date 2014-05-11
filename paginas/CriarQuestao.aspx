<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="CriarQuestao.aspx.cs" Inherits="paginas_CriarQuestao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../script/funcoes.js"></script>
    <form id="Form1" runat="server" >
        <asp:Label ID="lbl_nomeQuestionario" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lbl_nomeQuestao" runat="server" Text="Titulo da Questão"></asp:Label>
        <asp:TextBox ID="txb_nomeQuestao" runat="server" OnTextChanged="TextBox1_TextChanged" Width="147px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txb_nomeQuestao" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        <div id="TextBoxContainer">
            <input type="text" name="textfield" id="controle" runat="server" hidden="hidden"/>
            <label id="alternativa1" class="lbl">Alternativa:</label>
            <input type="text" name="textfield" id="txt_0" runat="server"/>
            <br/>
            <label id="alternativa2" class="lbl">Alternativa:</label>
            <input type="text" name="textfield" id="txt_1" runat="server"/>
            <br/>
            <label id="alternativa3" class="lbl">Alternativa:</label>
            <input type="text" name="textfield" id="txt_2" runat="server"/>
        </div>
        <input type="submit" name="Submit" value="+ Alternativa" onclick="novoTextDiv(); return false;"/>
        <br/>
        <asp:Button ID="btn_novo" runat="server" Text="Nova Pergunta" OnClick="btn_novo_Click" />
        <asp:Button ID="btn_enviar" runat="server" Text="Finalizar" OnClick="btn_enviar_Click" />
    </form>
</asp:Content>


