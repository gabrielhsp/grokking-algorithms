import Foundation

func binarySearch(list: [Int], item: Int) -> Int? {
    var smallestIndex = 0
    var largestIndex = list.count - 1
    var attempts = 1
    
    while smallestIndex <= largestIndex {
        var middleIndex = (smallestIndex + largestIndex) / 2
        var possibleItem = list[middleIndex]
        
        attempts += 1
        
        print("Searching between item \(list[smallestIndex]) and \(list[largestIndex])")
        print("Possible item is: \(possibleItem)")
        
        if possibleItem == item {
            print("Item found in \(attempts) attempts")
            return possibleItem
        }
        
        if possibleItem > item {
            largestIndex = middleIndex - 1
        } else {
            smallestIndex = middleIndex + 1
        }
    }
    
    return nil
}

func calculateAttempts(list: [Int]) -> Int {
    var item = list[list.count - 1]
    var attempts = 0
    
    while item > 1 {
        attempts += 1
        item = item / 2
    }
    
    return attempts
}

let list = Array(1...128)
let search = binarySearch(list: list, item: 128)

print("Binary Search", search)
print("Attempts", calculateAttempts(list: list))
