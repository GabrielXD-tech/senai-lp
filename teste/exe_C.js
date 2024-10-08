const frm = document.querySelector ("form")
const resposta2 = document.querySelector("h2")
const resposta = document.querySelector ("h3")

frm.addEventListener ("submit", (e) =>{
    e.preventDefault()
    const valorTotal = Number(frm.inValue.value);
    //emitir "Valor Inválido"
    if(valorTotal < 1){
        resposta2.innerText = "Valor Inválido";
    }
    else if (valorTotal >= 1 && valorTotal < 1.75){
        resposta2.innerText = "Tempo:30 Minutos";
         resp = valorTotal - 1;
    }
    else if(valorTotal >= 1.75 && valorTotal <= 2.9){
        resposta2.innerText = "Tempo: 60 Minutos"
        resp = valorTotal - 1.75;
    }
    else if(valorTotal >=3){
        resposta2.innerText ="Tempo: 120 Minutos"
        resp = valorTotal - 3;
    }
  
    resposta.innerText = `O Troco é de: ${resp.toFixed(2)}`
})