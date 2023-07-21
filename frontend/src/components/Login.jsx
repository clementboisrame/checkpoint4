import React, { useState } from "react";

function Login() {
  const [formData, setFormData] = useState({
    email: "",
    password: "",
  });

  const handleSubmit = (e) => {
    e.preventDefault();
    const url = "http://localhost:8080/login";
    const requestData = { ...formData };

    fetch(url, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(requestData),
    })
      .then((response) => response.text())
      .catch((err) => {
        console.error("Error:", err);
      });
  };

  return (
    <div>
      <form className="login" onSubmit={handleSubmit}>
        <label>
          Nom :
          <input type="text" name="name" />
        </label>
        <label>
          Email :
          <input
            type="text"
            name="email"
            value={formData.email}
            onChange={(e) =>
              setFormData({ ...formData, email: e.target.value })
            }
          />
        </label>
        <label>
          Password :
          <input
            type="password"
            name="password"
            value={formData.password}
            onChange={(e) =>
              setFormData({ ...formData, password: e.target.value })
            }
          />
        </label>
        <input type="submit" value="Envoyer" />
      </form>
    </div>
  );
}

export default Login;
