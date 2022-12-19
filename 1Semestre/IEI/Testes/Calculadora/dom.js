function calculate(){
    var x = document.getElementById( "op1" ); 
    var y = document.getElementById( "op2" ); 
    var z = document.getElementById( "res" );
    z.value = parseFloat(x.value) + parseFloat(y.value);
}

var opt = document.getElementById( "op-view" ); 
opt.innerHTML = op;
onload = calculate()

var op = "+"
var opt= document.getElementById( "op-view" );
opt.innerHTML = op

function operation() {
    var e = document.getElementById( "operation" );
    op = e.options[e.selectedIndex].value;
    opt.innerHTML = op;
}   

function move(){
    var e = document.getElementById( "btn" );
      e.style.position = "absolute";
      e.style.top = (Math.random() * window.innerHeight)+"px";
      e.style.left = (Math.random() * window.innerWidth)+"px";
}



