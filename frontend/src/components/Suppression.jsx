import React, { useState, useEffect } from "react";
import Vignette from "./Vignette";

function Suppression() {
  const [data, setData] = useState([]);

  useEffect(() => {
    fetch("http://localhost:8080/sejour")
      .then((response) => response.json())
      .then((res) => setData(res))
      .catch((err) => console.error(err));
  }, []);

  function handleDelete(id) {
    fetch(`http://localhost:8080/sejour/${id}`, {
      method: "DELETE",
    })
      .then((deleteResponse) => {
        if (deleteResponse.ok) {
          fetch("http://localhost:8080/sejour")
            .then((response) => response.json())
            .then((res) => setData(res))
            .catch((err) => console.error(err));
        } else {
          console.error("Échec de la suppression");
        }
      })
      .catch((err) => console.error(err));
  }

  return (
    <div className="home">
      <ul className="vignette">
        {data.map((el) => {
          return (
            <Vignette
              key={el.id}
              lieu={el.lieu}
              duree={el.duree}
              photo={el.photo}
              description={el.description}
              prix={el.prix}
              lien={el.lien}
              onDelete={() => handleDelete(el.id)}
            >
              <button type="button" onClick={() => handleDelete(el.id)}>
                Supprimer
              </button>
            </Vignette>
          );
        })}
      </ul>
    </div>
  );
}

export default Suppression;
