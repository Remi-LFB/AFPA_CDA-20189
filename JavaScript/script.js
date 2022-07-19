let btn1 = document.getElementById("btn1");
let sel1 = document.getElementById("sel1");
let sel2 = document.getElementById("sel2");
let div1 = document.getElementById("div1");

btn1.addEventListener("click", () =>
{
    fetch("listeproduits.php")
        .then((response) => {
            return response.text();
        })
        .then((data) => {
            div1.innerHTML = data;
        })
        .catch((error) => {
            console.log(error);
        });
})

fetch("listeregions.php")
    .then((response) => {
        return response.text();
    })
    .then((data) => {
        sel1.innerHTML = data;
    })
    .catch((error) => {
        console.log(error);
    });

sel1.addEventListener('click', () =>
{
    fetch("listedepartements.php?id=" + sel1.value)
        .then((response) => {
            return response.text();
        })
        .then((data) => {
            sel2.innerHTML = data;
        })
        .catch((error) => {
            console.log(error);
        });
});