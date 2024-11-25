//console.log("hello world");


//let userName = "Lanssar Niangane"; //string
//let age = 24; //int
//let size = 1.79; //float
//let isCool= true; //boolt

//consol.log("bonjour "+userName);
let resultHtml = document.querySelector('#result');


let nombre1 = parseInt(prompt("donner un premier nombre"));

while(isNaN(nombre1)) {
    nombre1 = parseInt(prompt("on t'a dit un nombre"))
}

let nombre2 = parseInt(prompt("donner un deuxième nombre"));

while(isNaN(nombre2)) {
    nombre2 = parseInt(prompt("on t'a dit un nombre"))
}

let resultat = nombre1 + nombre2;
let messageAddition = "<p>Le résultat de l'addition de "+nombre1+" et de "+nombre2+" est "+resultat</P>;
resultHtml.innerHTML = messageAddition;

resultat = nombre1 - nombre2;
let messageSoustraction = `<p>Le résultat de la soustraction de ${nombre1} et de ${nombre2} est ${resultat}</p>`;
resultHtml.innerHTML += messageSoustraction;


resultat = nombre1 * nombre2;
let messageMultiplication = `<p>Le résultat de la multiplication de ${nombre1} et de ${nombre2} est ${resultat}</p>`;
resultHtml.innerHTML = messageMultiplication;


resultat = nombre1 / nombre2;
let messageDivision = `<p>Le résultat de la division de ${nombre1} et de ${nombre2} est ${resultat}</p>`;
resultHtml.innerHTML = messageDivision;


/* if(isNaN(nombre1)) {
    console.log("Il faut écrire des chiffres pas des lettres - Tu comprends vraiment rien")
} else {
    let nombre2 = parseInt(prompt("donner un deuxième nombre"));

    if(isNaN(nombre1)) {
        console.log("Il faut écrire des chiffres pas des lettres - Tu comprends vraiment rien")
    } else { 
        let resultat = nombre1 + nombre2;
        console.log("Le résultat de l'addition de "+nombre1+" et de "+nombre2+" est "+resultat);

        resultat = nombre1 - nombre2;
        console.log(`Le résultat de la soustraction de ${nombre1} et de ${nombre2} est ${resultat}`);

        resultat = nombre1 * nombre2;
        console.log(`Le résultat de la multiplication de ${nombre1} et de ${nombre2} est ${resultat}`);

        resultat = nombre1 / nombre2;
        console.log(`Le résultat de la division de ${nombre1} et de ${nombre2} est ${resultat}`);
    }
}*/

/*for(let i = 1; i<=10; i++) {
    console.log(`${i} - bonjour`);

} */





