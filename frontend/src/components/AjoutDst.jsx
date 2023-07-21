import React, { useState } from "react";

function AjoutDst() {
  const [formData, setFormData] = useState({
    lieu: "",
    photo: "",
    duree: "",
    prix: "",
    description: "",
    lien: "",
  });

  const handleChange = (event) => {
    const { name, value } = event.target;
    setFormData((prevFormData) => ({
      ...prevFormData,
      [name]: value,
    }));
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    fetch("http://localhost:8080/sejour", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(formData),
    })
      .then((response) => {
        if (!response.ok) {
          throw new Error(
            `La requête POST a échoué avec le statut ${response.status}`
          );
        }
        return response.json();
      })
      .then(() => {
        setFormData({
          lieu: "",
          photo: "",
          duree: "",
          prix: "",
          description: "",
          lien: "",
        });
      })
      .catch((error) => {
        console.error(
          "Une erreur s'est produite lors de la requête POST :",
          error
        );
      });
  };

  return (
    <div className="formulaire">
      <form onSubmit={handleSubmit}>
        <div>
          <h1>Ajout d'une destination</h1>
          <label htmlFor="lieu">Lieu :</label>
          <input
            type="text"
            id="lieu"
            name="lieu"
            value={formData.lieu}
            onChange={handleChange}
            placeholder="     votre lieu ici ..."
          />
        </div>
        <div>
          <label htmlFor="photo">Image de présentation :</label>
          <input
            type="text"
            id="photo"
            name="photo"
            value={formData.photo}
            onChange={handleChange}
            placeholder="     le lien de la photo ..."
          />
        </div>
        <div>
          <label htmlFor="duree">Durée :</label>
          <input
            type="text"
            id="duree"
            name="duree"
            value={formData.duree}
            onChange={handleChange}
            placeholder="     la durée du sejour ..."
          />
        </div>
        <div>
          <label htmlFor="prix">Prix :</label>
          <input
            type="text"
            id="prix"
            name="prix"
            value={formData.prix}
            onChange={handleChange}
            placeholder="     le prix du sejour ..."
          />
        </div>
        <div>
          <label htmlFor="description">Description :</label>
          <input
            type="text"
            id="description"
            name="description"
            value={formData.description}
            onChange={handleChange}
            placeholder="     courte description ..."
          />
        </div>
        <div>
          <label htmlFor="lien">Lien :</label>
          <input
            type="text"
            id="lien"
            name="lien"
            value={formData.lien}
            onChange={handleChange}
            placeholder="     lien html ..."
          />
        </div>
        <button type="submit">Soumettre</button>
      </form>
    </div>
  );
}

export default AjoutDst;
