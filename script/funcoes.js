
function mudaImg(img) {
    document.getElementById("imgMenu").src = img;
}

var valor = 0;
var pontos = null;

function getTxtBox() {
    return '<label id="alternativa'+valor+'" class="lbl">Alternativa: </label>'
            +'<input type="text" name="textfield" id="txt_'+valor+'">'
            +'<input type="button" value="Remove" onclick = "removeTextBox(this)" />';
}

function novoTextDiv() {
    var div = document.createElement('DIV');
    div.innerHTML = getTxtBox();
    valor++;
    document.getElementById("TextBoxContainer").appendChild(div);
}

function removeTextBox(div) {
    document.getElementById("TextBoxContainer").removeChild(div.parentNode);
}

function setValor() {
    PageMethods.setValor(valor);
}


function RecreateDynamicTextboxes() {
    var values = eval('<%=Values%>');
    if (values != null) {
        var html = "";
        for (var i = 0; i < values.length; i++) {
            html += "<div>" + GetDynamicTextBox(values[i]) + "</div>";
        }
        document.getElementById("TextBoxContainer").innerHTML = html;
    }
}

function calculaPerfil(quantidade) {
    alert("kk");
    //document.getElementById('<%=lbl_text.ClientID%>').value = "asdasd";
    alert("kk2");
    var radio = document.getElementById('<%=rbl_alternativas0.ClientID%>');
    alert("kkX");
    alert("kk3");
}

window.onload = RecreateDynamicTextboxes;