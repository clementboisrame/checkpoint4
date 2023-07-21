import React from "react";
import { NavLink } from "react-router-dom";

function Navbar() {
  return (
    <div className="navbar">
      <ul>
        <li>
          <NavLink to="/">Accueil</NavLink>
        </li>

        <li>
          <NavLink to="/ajout">Ajouter une destination</NavLink>
        </li>
        <li>
          <NavLink to="/suppression">Supprimer une destination</NavLink>
        </li>
        <li>
          <NavLink to="/connection">Se connecter</NavLink>
        </li>
        <li>
          <NavLink to="/registration">S'enregistrer</NavLink>
        </li>
      </ul>
    </div>
  );
}

export default Navbar;
