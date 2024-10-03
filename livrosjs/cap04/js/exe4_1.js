const frm = document.querySelector ("form")
const Resp1 = document.querySelector ("h3")
const Resp3 = document.querySelector ("h4")

frm.addEventListener( "submit", (e) => {
    e.preventDefault ();
    const nome = frm.inNome.value
    //alert(nome)
    const Nota1 = Number(frm.inNota1.value)
    const Nota2 = Number(frm.inNota2.value)
    
    
    const media = (Nota1 + Nota2) / 2

    Resp.innerText = ` Média das Notas: ${media.toFixed(2)}`
    
    //alert(media >= 7);
    if (media >= 7) {
        //alert("Aprovado")
        Resp3.innerText =`Parabéns ${nome}! você foi Aprovado`;
        Resp3.style.color ='blue';
    }else{
        //alert ("Reprovado")
        Resp3.innerText = `Ops ${nome}! Você foi Reprovado`;
        Resp3.style.color = "red";
    }

})