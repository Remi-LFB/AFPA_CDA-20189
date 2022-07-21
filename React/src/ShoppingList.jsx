import {React, useState} from "react";

export default function ShoppingList() {
    const [shoppingList, setShoppingList] = useState([]);

    const handleShoppingList = () => {
        const input = document.getElementById("input");

        setShoppingList(current => [...current, input.value]);
    }

    return (
        <div className="ShoppingList">
            Liste des courses : {shoppingList.map((element, index) => {
                return (
                    <div key={index}>
                        <h2>{element}</h2>
                    </div>
                );
        })}

            <input type="text" id="input"/><button onClick={handleShoppingList}>Ajouter</button>
        </div>
    );
}
