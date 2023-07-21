import { Routes, Route } from "react-router-dom";
import React from "react";
import Home from "./Home";
import AjoutDst from "../components/AjoutDst";
import Suppression from "../components/Suppression";
import Login from "../components/Login";
import Register from "../components/Register";

function Router() {
  return (
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/ajout" element={<AjoutDst />} />
      <Route path="/suppression" element={<Suppression />} />
      <Route path="/connection" element={<Login />} />
      <Route path="/registration" element={<Register />} />
    </Routes>
  );
}

export default Router;
