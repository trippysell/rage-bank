require('dotenv').config()

const port = Number(process.env.DB_PORT)
const name = process.env.DB_NAME 
const password = Boolean(process.env.DB_PASSWORD)
const host = process.env.DB_HOST
const user = process.env.DB_USER

console.log(`DB_PORT: ${Number.isInteger(port)} ${typeof port} ${port}, 
    DB_NAME: ${name}, 
    DB_PASSWORD: ${password}, 
    DB_HOST:${host}, 
    DB_USER: ${user}`)