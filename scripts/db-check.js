
async function main() {
    const pool = require('../src/db')
    try {
        const [rows] = await pool.execute('SELECT 1 AS ok')
        console.log(rows[0])
        const [characters] = await pool.execute('SELECT * FROM characters');
        console.log(characters)
    } catch (err) {
        console.log('Ошибка запроса', err);
    } finally {
        await pool.end()
    }
}

main()