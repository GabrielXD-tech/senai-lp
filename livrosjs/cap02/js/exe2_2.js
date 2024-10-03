const frm = document.querySelector("form");
const resp = document.querySelector ("h3");
const resp2 = document.querySelector ("h4");

frm.addEventListener ("submit", (e)=>{
     const titulo = frm.Titulo.value; //entrada de dados
     const duracao = frm.inDuracao.value; //entrada de dados

     const horas = Math.floor (duracao /60); //processamento
     const minutos = duracao % 60 // processamento

     resp.innerText = titulo; //saida de dados
     resp2.innerText = `${horas} horas(s) e ${minutos} minuto(s)`; //saida de dados

     e.preventDefault();
    });