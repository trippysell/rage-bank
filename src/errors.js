class BankError extends Error {
    constructor(code, message){
        super(message);
        this.name = 'BankError';
        this.code = code;
    }
}
module.exports = { BankError }