

function mudaImg(img) {
    document.getElementById("imgMenu").src = img;
}




var id = 2;
var valor = 0;
function novoCampo() {
    var inp = document.createElement("input");
    inp.setAttribute("id", id);
    var lab = document.createElement("label");
    lab.setAttribute("id", "alternativa" + id);
    var lab_content = document.createTextNode("Alternativa " + id + ": ");
    var quebra = document.createElement("br");
    lab.appendChild(lab_content);
    var inpP = document.getElementById(id - 1);
    var parentInp = inpP.parentNode;
    parentInp.insertBefore(lab, inpP.nextSibling);
    parentInp.insertBefore(inp, lab.nextSibling);
    parentInp.insertBefore(quebra, lab);
    ++id;
}

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

window.onload = RecreateDynamicTextboxes;