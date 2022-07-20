let btn1 = document.getElementById("btn1");
let btns = document.getElementById("btns");
let sel1 = document.getElementById("sel1");
let sel2 = document.getElementById("sel2");
let div1 = document.getElementById("div1");
let input1 = document.getElementById("input1");

const api = "http://api.themoviedb.org/3/search/movie?api_key=f33cd318f5135dba306176c13104506a&query=";

btn1.addEventListener("click", () =>
{
    fetch("listeproduits.php")
        .then((response) => {
            return response.json();
        })
        .then((data) => {
            div1.innerHTML = "";
            for (let i = 0; i < data.length; i++) {
                div1.innerHTML += "<li>" + data[i].pro_libelle + "</li>";
            }
        })
        .catch((error) => {
            console.log(error);
        });
})

fetch("listeregions.php")
    .then((response) => {
        return response.json();
    })
    .then((data) => {
        for (let i = 0; i < data.length; i++) {
            sel1.innerHTML += "<option value='" + data[i].reg_id + "'>" + data[i].reg_v_nom + "</option>";
        }
    })
    .catch((error) => {
        console.log(error);
    });

sel1.addEventListener('change', () =>
{
    fetch("listedepartements.php?id=" + sel1.value)
        .then((response) => {
            return response.json();
        })
        .then((data) => {
            sel2.innerHTML = "";
            for (let i = 0; i < data.length; i++) {
                sel2.innerHTML += "<option value='" + data[i].dep_id + "'>" + data[i].dep_nom + "</option>";
            }
        })
        .catch((error) => {
            console.log(error);
        });
});

btns.addEventListener("click", () =>
{
    fetch(api + input1.value)
        .then((response) => {
            return response.json();
        })
        .then ((data) => {
            div1.innerHTML = "";
            for (let i = 0; i < data.results.length; i++) {
                div1.innerHTML += "<li>Titre : " + data.results[i].title + "<br>Date de sortie : " + data.results[i].release_date + "<br>" + "<img src='http://image.tmdb.org/t/p/w185" + data.results[i].poster_path + "'></li><hr>";
            }
        })
        .catch((error) => {
            console.log(error);
        });
});