function removeDelay(){
  setTimeout(function() {
  document.getElementById("btn1_1").classList.add("clicked");
  document.getElementById("btn1_2").classList.add("clicked");
  }, 300);
  var delay = document.getElementsByClassName("delay");
  var loop = delay.length
  setTimeout(function() {
    for (var i = 0; i <loop; i++) {
      delay[0].classList.remove("delay");
    }
  }, 2000); 
}


function reducaoErros(){
  var text = document.getElementById("reducao dos erros");
  var text2 = document.getElementById("velocidade 24h");
  var text3 = document.getElementById("realizacao de tarefas");
  if (text.style.display === "none") {
      text.style.display = "block";
      text2.style.display = "none";
      text3.style.display = "none";
      document.getElementById("btn1_1").classList.add("clicked");
      document.getElementById("btn2_1").classList.remove("clicked");
      document.getElementById("btn3_1").classList.remove("clicked");
    } else {
      text.style.display = "none";
      document.getElementById("btn1_1").classList.remove("clicked");
    }
}

function velocidade(){
  var text = document.getElementById("reducao dos erros");
  var text2 = document.getElementById("velocidade 24h");
  var text3 = document.getElementById("realizacao de tarefas");
  if (text2.style.display === "none") {
      text.style.display = "none";
      text2.style.display = "block";
      text3.style.display = "none";
      document.getElementById("btn2_1").classList.add("clicked");
      document.getElementById("btn1_1").classList.remove("clicked");
      document.getElementById("btn3_1").classList.remove("clicked");
    } else {
      text.style.display = "none";
      document.getElementById("btn2_1").classList.remove("clicked");
    }
}

function realizacaoTarefas(){
  var text = document.getElementById("reducao dos erros");
  var text2 = document.getElementById("velocidade 24h");
  var text3 = document.getElementById("realizacao de tarefas");
  if (text3.style.display === "none") {
      text2.style.display = "none";
      text.style.display = "none";
      text3.style.display = "block";
      document.getElementById("btn3_1").classList.add("clicked");
      document.getElementById("btn2_1").classList.remove("clicked");
      document.getElementById("btn1_1").classList.remove("clicked");
    } else {
      text.style.display = "none";
      document.getElementById("btn3_1").classList.remove("clicked");
    }
  }

function altoCusto(){
  var text = document.getElementById("alto custo");
  var text2 = document.getElementById("desemprego");
  var text3 = document.getElementById("falta criatividade");
  if (text.style.display === "none") {
      text.style.display = "block";
      text2.style.display = "none";
      text3.style.display = "none";
      document.getElementById("btn1_2").classList.add("clicked");
      document.getElementById("btn2_2").classList.remove("clicked");
      document.getElementById("btn3_2").classList.remove("clicked");
    } else {
      text.style.display = "none";
      document.getElementById("btn1_2").classList.remove("clicked");
    }
}

function desemprego(){
  var text = document.getElementById("alto custo");
  var text2 = document.getElementById("desemprego");
  var text3 = document.getElementById("falta criatividade");
  if (text2.style.display === "none") {
      text.style.display = "none";
      text2.style.display = "block";
      text3.style.display = "none";
      document.getElementById("btn2_2").classList.add("clicked");
      document.getElementById("btn1_2").classList.remove("clicked");
      document.getElementById("btn3_2").classList.remove("clicked");
    } else {
      text.style.display = "none";
      document.getElementById("btn2_2").classList.remove("clicked");
    }
}

function faltaCriatividade(){
  var text = document.getElementById("alto custo");
  var text2 = document.getElementById("desemprego");
  var text3 = document.getElementById("falta criatividade");
  if (text3.style.display === "none") {
      text2.style.display = "none";
      text.style.display = "none";
      text3.style.display = "block";
      document.getElementById("btn3_2").classList.add("clicked");
      document.getElementById("btn2_2").classList.remove("clicked");
      document.getElementById("btn1_2").classList.remove("clicked");
    } else {
      text.style.display = "none";
      document.getElementById("btn3_2").classList.remove("clicked");
    }
}