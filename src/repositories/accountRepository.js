const pool = require('../db')

async function findById(billId, conn = pool) {
    const [rows] = await conn.execute(
        "SELECT bill_id, character_id, balance, bill_type FROM bank_accounts WHERE bill_id = ?",
        [billId]
    );
    return rows[0] || null
}
module.exports = { findById }