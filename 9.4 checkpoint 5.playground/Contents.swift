import Cocoa

/*
 Input: [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
 
 Your job is to:
 1. Filter out any numbers that are even
 2. Sort the array in ascending order
 3. Map them to strings in the format “7 is a lucky number”
 4. Print the resulting array, one item per line
 
 Output:
 7 is a lucky number
 15 is a lucky number
 21 is a lucky number
 31 is a lucky number
 33 is a lucky number
 49 is a lucky number
*/

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let notEvenNumber = { (element: Int) -> Bool in
    !element.isMultiple(of: 2)
}
let notEvenNumbers = { (element: Int) -> Bool in
    return !element.isMultiple(of: 2)
}
let ascendingOrder = { (first: Int, second: Int) -> Bool in
    return first < second
}
let toLuckyText = { (element: Int) -> String in
    return "\(element) is a lucky number"
}
let printElements = { (element: String) -> Void in
    print(element)
}

luckyNumbers
    .filter(notEvenNumbers)
    .sorted(by: ascendingOrder)
    .map(toLuckyText)
    .forEach(printElements)

luckyNumbers
    .filter { element in
        !element.isMultiple(of: 2)
    }
    .sorted { first, second in
        first < second
    }
    .map { element in
        "\(element) is a lucky number"
    }
    .forEach { element in
        print(element)
    }
