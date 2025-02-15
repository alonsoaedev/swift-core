import Cocoa

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

// using basic closure syntax
let sorted = team.sorted(by: { (first: String, second: String) -> Bool in
    if first == "Suzanne" {
        return true
    } else if second == "Suzanne" {
        return false
    }
    
    return first < second
})
print(sorted)

// using closure without data type
let sorted2 = team.sorted(by: { first, second in
    if first == "Suzanne" {
        return true
    } else if second == "Suzanne" {
        return false
    }
    
    return first < second
})
print(sorted2)

// using trailing closure syntax
let sorted3 = team.sorted { first, second in
    if first == "Suzanne" {
        return true
    } else if second == "Suzanne" {
        return false
    }
    
    return first < second
}
print(sorted3)

// using shorthand closure syntax
let sorted4 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
}
print(sorted4)

// using trailing closure syntax and super simplified
let sorted5 = team.sorted { $0 < $1 }
print(sorted5)

let namesWithT = team.filter { $0.hasPrefix("T") }
print(namesWithT)
let namesWithSUpperCased = team.filter { $0.hasPrefix("S") }.map { $0.uppercased() }
print(namesWithSUpperCased)
