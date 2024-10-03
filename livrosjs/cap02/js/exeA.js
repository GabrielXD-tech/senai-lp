const frm = document.querySelector ("form")
const resp  = document.querySelector ("h3")
const Resp2  = document.querySelector ("#Resp2")


frm.addEventListener("submit", (e) => {

    const remedio = frm.Resp11.value
    const valor = Number(frm.Resp12.value)

    const desconto = (valor * 2) - 0.90


    resp.innerText = `${remedio}`
    Resp2.innerText = `Valor do Produto com deconto (desconto inserido apos a compra de dois produtos) ${desconto}`

    e.preventDefault()
});


