import config from './dbconfig.json';

const { Pool } = require('pg')
let mysqlData = config.mysqlData.map((mysqlData, key) => {
  const pool = new Pool({
    user: 'mysqlData.user',
    host: 'mysqlData.host',
    database: 'mysqlData.database',
    password: 'mysqlData.password',
    post: 5432
  })
}

module.exports = pool
