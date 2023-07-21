import React, { useState, useEffect } from "react";
import Vignette from "../components/Vignette";

function Home() {
  const [data, setData] = useState([]);
  const [selectedValue, setSelectedValue] = useState("...");

  useEffect(() => {
    fetch("http://localhost:8080/sejour")
      .then((response) => response.json())
      .then((res) => setData(res))
      .catch((err) => console.error(err));
  }, []);

  function handleChange(e) {
    setSelectedValue(e.target.value);
  }
  return (
    <div className="home">
      <select className="select" onChange={handleChange}>
        <option>...</option>
        {data.map((el) => {
          return <option key={el.id}>{el.lieu}</option>;
        })}
      </select>

      <ul className="vignette">
        {data
          .filter((el) => selectedValue === "..." || selectedValue === el.lieu)
          .map((el) => {
            return (
              <Vignette
                key={el.id}
                lieu={el.lieu}
                duree={el.duree}
                photo={el.photo}
                description={el.description}
                prix={el.prix}
                lien={el.lien}
              />
            );
          })}
      </ul>
    </div>
  );
}

export default Home;
