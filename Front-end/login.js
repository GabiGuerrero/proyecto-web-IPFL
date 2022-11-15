function validate () {
    let usuario = document.getElementById("usuario").value;
    let clave = document.getElementById("clave").value;
    if (usuario == "usuario" && clave == "1234") {
    
        window.location.href = "home.html";
        return false;
    } else {
        alert("usuario o clave incorrectos");
    }
}
let button = document.getElemntById("button");
button.addEventListener("click", (e)=> {
      e.preventDeFault();
    validate();
}) 
  