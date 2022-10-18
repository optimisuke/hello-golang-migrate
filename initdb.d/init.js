db = db.getSiblingDB("admin");
db.auth("root", "password");
db.createUser({
  user: "testuser",
  pwd: "password",
  roles: [
    {
      role: "readWrite",
      db: "hoge",
    },
  ],
});
