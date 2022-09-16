// import ReactDOM from "react-dom";
import { createRoot } from "react-dom/client";
import { StrictMode } from "react"; // https://fr.reactjs.org/docs/strict-mode.html

import App from "./App";
import Counter from "./Counter";
import ShoppingList from "./ShoppingList";
import Tmdb from "./Tmdb";

/* Ancienne méthode de rendu
ReactDOM.render(<div><App /><Counter /></div>, app);

Nouvelle méthode de rendu */
const container = document.getElementById("app");
const root = createRoot(container);

// Utilisation du Strict Mode qui permet également d'envelopper les composants
root.render(
    <StrictMode>
        <App />
        <Counter />
        <ShoppingList />
        <Tmdb />
    </StrictMode>
);
