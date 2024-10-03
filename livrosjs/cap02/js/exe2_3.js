const formulario = document.querySelector ("form");
const Resp1 = document.querySelector ("#Resp1");
const Resp2 = document.querySelector ("#Resp2");
const Resp3 = document.querySelector ("#Resp3");

formulario.addEventListener ("submit", (e) => {

    const veiculo = formulario.text1.value
    const preco = Number(formulario.text2.value)

    const entrada = preco /2;
    const parcela = (preco * 0.5)/12;

    Resp1.innerText = `Promoção: ${veiculo}`
    Resp2.innerText = `Valor da entrada R$${entrada.toFixed(2)}`
    Resp3.innerText = `Valor da parcela em 12x R$${parcela.toFixed(2)}`

    e.preventDefault()
})