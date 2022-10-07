import Foundation


var unsortedStrings = [String]()
while let line = readLine() {
    unsortedStrings.append(line.lowercased())
}


func selectionSort(_ unsortedStrings: [String]) -> [String] {

    var totalSwapCount = 0
    var unsorted = unsortedStrings
    var pass = 0

    print(unsortedStrings)
 //   print("Pass: \(pass), Swaps: 0/0, Array: \(unsorted)")
    
    for i in 0 ..< unsorted.count - 1 {
        var minValue = i
        var swap = 0
        
        for j in i + 1 ..< unsorted.count {

            if unsorted[j] < unsorted[minValue] {
                minValue = j
              
            }
        }
        if i != minValue {
            
            (unsorted[i], unsorted[minValue]) = (unsorted[minValue], unsorted[i])

        }
        pass += 1
        swap += 1
        totalSwapCount += 1
   //     print("Pass: \(pass), Swaps: \(swap)/\(totalSwapCount), Array: \(unsorted)")
        
    }



    return(unsorted)
}


var sorted = selectionSort(unsortedStrings)
print(sorted)
