//Part 5: Setting up the database connector for the App
var pgp = require('pg-promise')();

//var dbConfig = process.env.DATABASE_URL;


const dbConfig = {
   host: 'localhost',
   port: 5432,
   database: 'weathertech',
   password: ''
};



var db = pgp(dbConfig);

module.exports = dbConfig;