const frm = document.querySelector("form")
const resp = document.querySelector("#out01")
const resp2 = document.querySelector("#out02")


frm.addEventListener ("submit", (e)=>{
    e.preventDefault()
    const ladoA = Number(frm.inladoA.value);
    const ladoB = Number(frm.inladoB.value);
    const ladoC = Number(frm.inladoC.value);

    if(ladoA >(ladoB+ladoC) || ladoB > (ladoA+ladoC) || ladoC > (ladoA + ladoB)){
        resp.innerText = "Não pode Formar um Triângulo"
    } else{
        resp2.innerText ="Pode formar um triângulo"
            if(ladoA == ladoB && ladoA == ladoC){
                resp2.innerText = "Triângulo equilátero (3 lados Iguais)"

            }else if(ladoA != ladoB && ladoA != ladoC && ladoB != ladoC){
                resp2.innerText ="Triângulo Escaleno"

            }else{
                resp2.innerText ="Triângulo Isóceles"

            }
    }

})