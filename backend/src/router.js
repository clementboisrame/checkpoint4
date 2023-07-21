const express = require("express");

const router = express.Router();

const sejourControllers = require("./controllers/sejourControllers");
const userController = require("./controllers/userController");

// sejour

router.get("/sejour", sejourControllers.browse);
router.get("/sejour/:id", sejourControllers.read);
router.put("/sejour/:id", sejourControllers.edit);
router.post("/sejour", sejourControllers.add);
router.delete("/sejour/:id", sejourControllers.destroy);

// user

router.post("/user/", userController.add);

module.exports = router;
