import React from "react";
import PropTypes from "prop-types";
import { useLocation } from "react-router-dom";

function Vignette({ lieu, photo, duree, prix, description, lien, onDelete }) {
  const location = useLocation();

  const isDeletePage = location.pathname === "/suppression";
  return (
    <li className="solo">
      <h1>{lieu}</h1>
      <p className="duree">{duree}</p>
      <img src={photo} className="image" alt="" />
      <p>{description}</p>
      <p className="prix">{prix}€ </p>
      {isDeletePage && (
        <button type="button" onClick={onDelete}>
          Supprimer
        </button>
      )}
      <p className="lien">
        <a href={lien}>Plus d'info</a>
      </p>
    </li>
  );
}

Vignette.propTypes = {
  lieu: PropTypes.string.isRequired,
  photo: PropTypes.string.isRequired,
  duree: PropTypes.string.isRequired,
  prix: PropTypes.number.isRequired,
  description: PropTypes.string.isRequired,
  lien: PropTypes.string.isRequired,
  onDelete: PropTypes.func.isRequired,
};

export default Vignette;
