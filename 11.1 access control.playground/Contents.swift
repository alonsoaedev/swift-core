import Cocoa

struct BankAccount {
    // private: Don't let anything outside the struct use this.
    // fileprivate: Don't let anything outside the current file use this
    // public: Let anyone, anywhere use this
    // private(set)
    private var funds = 0
    
    mutating func deposite(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposite(amount: 100)

let success = account.withdraw(amount: 200)

print(success ? "Withdrew money successfully" : "Failed to get the money")

//account.funds -= 1000
