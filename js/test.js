/*
function highlight(e) {
    if (selected[0]) selected[0].className = '';
    e.target.parentNode.className = 'selected';
    
}
*/

var table = document.getElementById('table'),
 selected = table.getElementsByClassName('selected');
table.onclick = highlight;

function fnselect(){
var $row=$(this).parent().find('td');
    var clickeedID=$row.eq(0).text();
   // alert(clickeedID);
}

$("#tst").click(function(){
    var value =$(".selected td:first").html();
    value = value || "No row Selected";
  alert(value);
});   

function myFunction(x) {
    //alert("Row index is: " + x.rowIndex);
  var row = x.rowIndex;
  
  var idCita = $('table tr:nth-child('+row+') td:nth-child(1)').text();
  //Session["idCita"] = " + idCita;
  //Session["idCita"] =idCita;
  var nombrePaciente = $('table tr:nth-child('+row+') td:nth-child(2)').text();
  var txtBtnSubmit = "Atender Cita de "+nombrePaciente;
 
  $("input:text").val(idCita);
  //$("input:submit").val(txtBtnSubmit);
  $("#atendercita").val(txtBtnSubmit);
}

//
function myFunction_pac_txs(x) {
   //alert("Row index is: " + x.rowIndex);
  var row = x.rowIndex;
  
  var idCita = $('table tr:nth-child('+row+') td:nth-child(1)').text();
  //Session["idCita"] = " + idCita;
  //Session["idCita"] =idCita;
  var nombrePaciente = $('table tr:nth-child('+row+') td:nth-child(2)').text();
  var txtBtnSubmit = "Atender Cita de "+nombrePaciente;
 
  $("input:text").val(idCita);
  //$("input:submit").val(txtBtnSubmit);
  $("#atendercita").val(txtBtnSubmit);
  //alert(idCita);
}

function selectEsp(){
  var espSeleccionada = $("#especialidad").val();
  
  alert(selEspecialidad);
  
  $("#especialidadSelect").val(espSeleccionada);
  
}

function myFunctionaddrow() {
    var table = document.getElementById("myTable");
    var row = table.insertRow(0);
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2);
    var cell4 = row.insertCell(3);
  
    var medicamento=$("#order_desc").val();//$("#medicamento").val();
    var tipo =$("#order_qty").val();//$("#tipomed").val();
    var cantidad=$("#order_unit_prc").val();//$("#cantidadmed").val();
    var horario=$("#order_amt").val();//$("#horario").val();
  
    cell1.innerHTML = medicamento;
    cell2.innerHTML = tipo;
    cell3.innerHTML = cantidad;
    cell4.innerHTML = horario;
  
}