import {React, useState} from 'react';

export default function App() { // Exportation du composant à sa déclaration

    const [nom, setNom] = useState("l'asticot");

    const handleChangeNom = (evt) => {
        setNom(evt.target.value);
    }

    const [prenom, setPrenom] = useState("Roro");

    const handleChangePrenom = (evt) => {
        setPrenom(evt.target.value);
    }

    return (
        <div className="App">
            Bonjour <span className='bolder'>{prenom} {nom}</span><br /><br />

            <input type="text" value={nom} onChange={handleChangeNom}/>
            <input type="text" value={prenom} onChange={handleChangePrenom}/>
        </div>
    );
}
