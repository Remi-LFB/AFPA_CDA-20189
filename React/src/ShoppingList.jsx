import { React, useState } from "react";

export default function ShoppingList() {
    const [shoppingList, setShoppingList] = useState([]);
    const [element, setElement] = useState("");

    const handleShoppingList = () => {
        setShoppingList(current => [...current, element]);
    }

    const handleChangeElement = (evt) => {
        setElement(evt.target.value);
    }

    return (
        <div className="ShoppingList">
            <input type="text" onChange={handleChangeElement}/><button onClick={handleShoppingList}>Ajouter</button><br /><br />

            Liste des courses :
            <ol>
                {shoppingList.map((element) => {
                    return (
                        <li>{element}</li>
                    );
                })}
            </ol>
        </div>
    );
}
