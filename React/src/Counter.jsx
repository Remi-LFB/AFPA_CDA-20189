import { React, useState } from "react";

export default function Counter() {
    const [counter, setCounter] = useState(0);

    const handleClickCounter = (evt) => {
        if (evt.target.innerHTML === "-") {
            setCounter(counter - 1);
        } else {
            setCounter(counter + 1);
        }
    }

    return (
        <div className="Counter">
            <button onClick={handleClickCounter}>-</button> Compteur : {counter} <button onClick={handleClickCounter}>+</button>
        </div>
    );
}
