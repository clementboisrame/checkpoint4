const AbstractManager = require("./AbstractManager");

class SejourManager extends AbstractManager {
  constructor() {
    super({ table: "sejour" });
  }

  insert(sejour) {
    return this.database.query(
      `insert into ${this.table} (  lieu ,photo ,duree ,prix ,description ,lien) values (?, ?, ?, ?, ?, ?)`,
      [
        sejour.lieu,
        sejour.photo,
        sejour.duree,
        sejour.prix,
        sejour.description,
        sejour.lien,
      ]
    );
  }

  update(sejour) {
    return this.database.query(
      `update ${this.table} set lieu = ?, photo =?, duree = ?, prix = ?, description = ?, lien = ? where id = ?`,
      [
        sejour.lieu,
        sejour.photo,
        sejour.duree,
        sejour.prix,
        sejour.description,
        sejour.lien,
      ]
    );
  }
}

module.exports = SejourManager;
