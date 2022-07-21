import {React, useState} from "react";

export default function Counter() {
    const [counter, setCounter] = useState(0);

    const handleIncreaseCounter = () => {
        setCounter(counter + 1);
    }

    const handleDecreaseCounter = () => {
        setCounter(counter - 1);
    }

    return (
        <div className="Counter">
            <button onClick={handleDecreaseCounter}>-</button> Compteur : {counter} <button onClick={handleIncreaseCounter}>+</button>
        </div>
    );
}
