
function chamar1() {
  var dots = document.getElementById("dots1");
  var moreText = document.getElementById("more1");
  var btnText = document.getElementById("lerMaisMenos1")
  maisMenosTexto(dots, moreText, btnText)
}

function chamar2() {
var dots = document.getElementById("dots2");
var moreText = document.getElementById("more2");
var btnText = document.getElementById("lerMaisMenos2")
maisMenosTexto(dots, moreText, btnText)
}

function chamar3() {
var dots = document.getElementById("dots3");
var moreText = document.getElementById("more3");
var btnText = document.getElementById("lerMaisMenos3")
var card = document.getElementById("card3")
maisMenosTexto(dots, moreText, btnText)
}

function chamar4() {
var dots = document.getElementById("dots4");
var moreText = document.getElementById("more4");
var btnText = document.getElementById("lerMaisMenos4")
var card = document.getElementById("card4")
maisMenosTexto(dots, moreText, btnText)
}

function chamar5() {
var dots = document.getElementById("dots5");
var moreText = document.getElementById("more5");
var btnText = document.getElementById("lerMaisMenos5")
maisMenosTexto(dots, moreText, btnText)
}

function chamar6() {
var dots = document.getElementById("dots6");
var moreText = document.getElementById("more6");
var btnText = document.getElementById("lerMaisMenos6")
maisMenosTexto(dots, moreText, btnText)
}

function chamar7() {
  var dots = document.getElementById("dots7");
  var moreText = document.getElementById("more7");
  var btnText = document.getElementById("lerMaisMenos7")
  maisMenosTexto(dots, moreText, btnText)
  }

function maisMenosTexto(dots, moreText, btnText) {
  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Ler mais"; 
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Ler menos"; 
    moreText.style.display = "inline";
  }
}

function importancia() {
var text = document.getElementById("importancia1");
var text2 = document.getElementById("classificacao1");
var text3 = document.getElementById("funcionamento1");
var imagem = document.getElementById("video");
if (text.style.display === "none") {
  imagem.style.display = "none";
  text2.style.display = "none";
  text3.style.display = "none";
  text.style.display = "block";
  document.getElementById("clas").classList.remove("white-blue-bg");
  document.getElementById("func").classList.remove("white-blue-bg");
  document.getElementById("imp").classList.add("white-blue-bg");
} else {
  imagem.style.display = "block";
  text.style.display = "none";
  document.getElementById("imp").classList.remove("white-blue-bg");

}
}

function classificacao() {
var text2 = document.getElementById("classificacao1");
var text = document.getElementById("importancia1");
var text3 = document.getElementById("funcionamento1");
var imagem = document.getElementById("video");
if (text2.style.display === "none") {
  imagem.style.display = "none";
  text.style.display = "none";
  text3.style.display = "none";
  text2.style.display = "block";
  document.getElementById("clas").classList.add("white-blue-bg");
  document.getElementById("func").classList.remove("white-blue-bg");
  document.getElementById("imp").classList.remove("white-blue-bg");
} else {
  imagem.style.display = "block";
  text2.style.display = "none";
  document.getElementById("clas").classList.remove("white-blue-bg");
}
}

function funcionalidades() {
var text3 = document.getElementById("funcionamento1");
var text2 = document.getElementById("classificacao1");
var text = document.getElementById("importancia1");
var imagem = document.getElementById("video");
if (text3.style.display === "none") {
  imagem.style.display = "none";
  text2.style.display = "none";
  text.style.display = "none";
  text3.style.display = "block";
  document.getElementById("clas").classList.remove("white-blue-bg");
  document.getElementById("func").classList.add("white-blue-bg");
  document.getElementById("imp").classList.remove("white-blue-bg");
} else {
  imagem.style.display = "block";
  text3.style.display = "none";
  document.getElementById("func").classList.remove("white-blue-bg");
}
}

