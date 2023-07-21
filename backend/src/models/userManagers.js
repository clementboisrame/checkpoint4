const AbstractManager = require("./AbstractManager");

class UserManager extends AbstractManager {
  constructor() {
    super({ table: "user" });
  }

  insert(user) {
    return this.database.query(
      `insert into ${this.table} ( name, email ,password) values (?, ?, ?)`,
      [user.name, user.email, user.password]
    );
  }

  update(user) {
    return this.database.query(
      `update ${this.table} set name = ?, email =?, password = ? where id = ?`,
      [user.name, user.email, user.password]
    );
  }
}

module.exports = UserManager;
