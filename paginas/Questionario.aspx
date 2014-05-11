﻿<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Questionario.aspx.cs" Inherits="paginas_Questionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../script/funcoes.js"></script>
    <form id="form1" runat="server">
        <asp:Label ID="lbl_nomeQuestionario" runat="server" Text="Análise do perfil de investidor."></asp:Label>
        <br />
        <br />
        <asp:Label ID="lbl_nomeQuestao0" runat="server" Text="1. Qual a sua faixa de idade"></asp:Label>
        <asp:RadioButtonList ID="rbl_alternativas0" name="rbl_alternativas0" runat="server" OnSelectedIndexChanged="rbl_alternativas0_SelectedIndexChanged" Width="187px">
            <asp:ListItem Value="5">Até 25 anos</asp:ListItem>
            <asp:ListItem Value="4">Entre 25 e 35 anos </asp:ListItem>
            <asp:ListItem Value="3">Entre 35 e 45 anos </asp:ListItem>
            <asp:ListItem Value="2">Entre 45 e 60 anos </asp:ListItem>
            <asp:ListItem Value="1">Acima de 60 anos</asp:ListItem>
        </asp:RadioButtonList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rbl_alternativas0" ErrorMessage="Faltou responder essa questão."></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label ID="lbl_nomeQuestao1" runat="server" Text="2. Qual o seu grau de escolaridade"></asp:Label>
        <asp:RadioButtonList ID="rbl_alternativas1" runat="server">
            <asp:ListItem Value="1">Ensino Fundamental Incompleto</asp:ListItem>
            <asp:ListItem Value="2">Ensino Fundamental Completo</asp:ListItem>
            <asp:ListItem Value="3">Ensino Médio Completo</asp:ListItem>
            <asp:ListItem Value="4">Ensino Superior Completo</asp:ListItem>
            <asp:ListItem Value="5">Pós-graduação</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rbl_alternativas1" ErrorMessage="Faltou responder essa questão."></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label ID="lbl_nomeQuestao2" runat="server" Text="3. Possui dependentes"></asp:Label>
        <asp:RadioButtonList ID="rbl_alternativas2" runat="server" OnSelectedIndexChanged="rbl_alternativas2_SelectedIndexChanged">
            <asp:ListItem Value="5">Não possui</asp:ListItem>
            <asp:ListItem Value="3">Possui até dois dependentes</asp:ListItem>
            <asp:ListItem Value="1">Possui mais de dois dependentes</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rbl_alternativas2" ErrorMessage="Faltou responder essa questão."></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label ID="lbl_nomeQuestao3" runat="server" Text="4. Assinale a alternativa que representa o percentual do total dos seus recursos a serem aplicados em investimentos."></asp:Label>
        <asp:RadioButtonList ID="rbl_alternativas3" runat="server">
            <asp:ListItem Value="1">Menos de 25%</asp:ListItem>
            <asp:ListItem Value="2">Entre 25% e 50%</asp:ListItem>
            <asp:ListItem Value="3">Entre 50% e 75%</asp:ListItem>
            <asp:ListItem Value="4">Mais de 75%</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rbl_alternativas3" ErrorMessage="Faltou responder essa questão."></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label ID="lbl_nomeQuestao4" runat="server" Text="5. Qual a estimativa de permanência no investimento?"></asp:Label>
        <asp:RadioButtonList ID="rbl_alternativas4" runat="server">
            <asp:ListItem Value="1">Menos de 1 ano</asp:ListItem>
            <asp:ListItem Value="3">De 1 ano a 3 anos</asp:ListItem>
            <asp:ListItem Value="4">Superior a 3 anos</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rbl_alternativas4" ErrorMessage="Faltou responder essa questão."></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label ID="lbl_nomeQuestao5" runat="server" Text="6. Qual o principal objetivo com relação aos investimentos?"></asp:Label>
        <asp:RadioButtonList ID="rbl_alternativas5" runat="server">
            <asp:ListItem Value="2">Preservar o poder de compra sem risco de comprometer o principal investido</asp:ListItem>
            <asp:ListItem Value="6">Obter ganhos que superem a inflação no longo prazo</asp:ListItem>
            <asp:ListItem Value="8">Obter ganhos expressivos no longo prazo, mesmo que a estratégia adotada implique em potencial perda parcial ou total do recurso investido</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="rbl_alternativas5" ErrorMessage="Faltou responder essa questão."></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label ID="lbl_nomeQuestao6" runat="server" Text="7. Com relação aos riscos envolvidos nos investimentos, como reagiria ao verificar que determinado investimento, após certo período, apresentou retorno negativo?"></asp:Label>
        <asp:RadioButtonList ID="rbl_alternativas6" runat="server">
            <asp:ListItem Value="3">Resgataria imediatamente</asp:ListItem>
            <asp:ListItem Value="9">Determinaria um valor máximo de perda antes de resgatar</asp:ListItem>
            <asp:ListItem Value="12">Realizaria aportes adicionais</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="rbl_alternativas6" ErrorMessage="Faltou responder essa questão."></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label ID="lbl_nomeQuestao7" runat="server" Text="8. Há quanto tempo mantém recursos em investimentos ou em portfólio de investimentos?"></asp:Label>
        <asp:RadioButtonList ID="rbl_alternativas7" runat="server">
            <asp:ListItem Value="1">Menos de 5 anos</asp:ListItem>
            <asp:ListItem Value="3">Entre 5 anos a 10 anos</asp:ListItem>
            <asp:ListItem Value="4">Superior a 10 anos</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="rbl_alternativas7" ErrorMessage="Faltou responder essa questão."></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label ID="lbl_nomeQuestao8" runat="server" Text="9. Como se considera em relação aos diversos tipos de investimentos existentes no mercado financeiro?"></asp:Label>
        <asp:RadioButtonList ID="rbl_alternativas8" runat="server">
            <asp:ListItem Value="1">Pouca experiência</asp:ListItem>
            <asp:ListItem Value="3">Média experiência</asp:ListItem>
            <asp:ListItem Value="5">Significativa experiência</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="rbl_alternativas8" ErrorMessage="Faltou responder essa questão."></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label ID="lbl_nomeQuestao9" runat="server" Text="10. Como diversifica a alocação dos seus recursos?"></asp:Label>
        <asp:RadioButtonList ID="rbl_alternativas9" runat="server">
            <asp:ListItem Value="4">Investe a totalidade do seu patrimônio em investimentos de baixíssimo risco</asp:ListItem>
            <asp:ListItem Value="8">Investe a maior parte do seu patrimônio em investimentos de baixíssimo risco, mas direciona pequena parte para investimentos de maior risco</asp:ListItem>
            <asp:ListItem Value="8">Investe 50% do seu patrimônio em investimentos de baixo risco e o restante em investimentos de maior risco e maior expectativa de retorno</asp:ListItem>
            <asp:ListItem Value="12">Investe a maior parte de seu patrimônio em investimentos de maior risco, e direciona pequena parte para investimentos de baixo risco</asp:ListItem>
            <asp:ListItem Value="16">Investe a totalidade do seu patrimônio em investimentos de maior risco</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="rbl_alternativas9" ErrorMessage="Faltou responder essa questão."></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label ID="lbl_nomeQuestao10" runat="server" Text="11. Assinale a alternativa que melhor representa a sua opção ao adquirir um seguro:"></asp:Label>
        <asp:RadioButtonList ID="rbl_alternativas10" runat="server">
            <asp:ListItem Value="3">Valor de franquia reduzido a fim de pagar prêmio elevado</asp:ListItem>
            <asp:ListItem Value="6">Valor de franquia moderado a fim de pagar prêmio moderado</asp:ListItem>
            <asp:ListItem Value="9">Valor de franquia elevado a fim de pagar prêmio reduzido</asp:ListItem>
            <asp:ListItem Value="12">Prefere não fazer seguro</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="rbl_alternativas10" ErrorMessage="Faltou responder essa questão."></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" /><asp:Button ID="btn_enviar" runat="server" Text="Enviar" OnClick="btn_enviar_Click" />
        
        &nbsp;</form>
</asp:Content>

