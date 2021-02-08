const SQL = require('../seed');
// console.log(SQL);

const pg = require('pg');
let client = new pg.Client("postgres://localhost/");

client.query(`DROP DATABASE IF EXISTS justicetwo`);
client.query(`CREATE DATABASE justicetwo`);

const postgresUrl = 'postgres://localhost/justicetwo';
client = new pg.Client(postgresUrl);

const syncAndSeed = async() => {
    await client.query(SQL);
}

const setUp = async () => {
    try {
      await client.connect();
      console.log("connected to justicetwo database");
      await syncAndSeed();
      console.log("created tables");
    } catch (error) {
      console.log(error);
    }
  };

  setUp();

module.exports = client;




