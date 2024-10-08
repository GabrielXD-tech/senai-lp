const frm = document.querySelector("form");
const response = document.querySelector("h3");
const responseTroco = document.querySelector("h4");

function calulcar() {
    const value = Number(frm.inValue.value);
    var valorTroco = 0;

    // Calculando o tempo
    if (value < 1) {
        response.innerText = "Valor inválido!";
    }
    else if (value < 1.74){
        response.innerText = `Tempo: 30`;
        valorTroco = value - 1;
    }
    else if (value > 1.75 && value < 3) {
        response.innerText = `Tempo: 60`;
        valorTroco = value - 1.75;
    }
    else if (value <= 3) {
        response.innerText = `Tempo: 120`;
        valorTroco = value - 3;
    }
    else{
        response.innerText = `Tempo: 120`;
        valorTroco = value - 3; 
    }

    // Exibindo o troco
    responseTroco.innerText = `Troco: R$${valorTroco.toFixed(2)}`;
}

