import { React, useState } from "react";

export default function Tmdb() {
    const [moviesList, setMoviesList] = useState([]);
    const [element, setElement] = useState("");

    const handleChangeElement = (evt) => {
        setElement(evt.target.value);
    }

    const handleMoviesList = () => {
        fetch("http://api.themoviedb.org/3/search/movie?api_key=f33cd318f5135dba306176c13104506a&query=" + element)
            .then((response) => {
                return response.json();
            })
            .then((data) => {
                setMoviesList(data.results)
            })
            .catch((error) => {
                console.log(error);
            });
        }

    return (
        <div className="Tmdb">
            <input type="text" onChange={handleChangeElement}/><button onClick={handleMoviesList}>Rechercher</button><br /><br />

            Résultats de la recherche :<br /><br /> {moviesList.map((element, index) => {
                return (
                    <div key={index}>
                        Titre : {element.title}<br />
                        Date de sortie : {element.release_date}<br /><br />
                        <img src={"http://image.tmdb.org/t/p/w185" + element.poster_path} alt={element.title} /><hr />
                    </div>
                );
            })}
        </div>
    );
}