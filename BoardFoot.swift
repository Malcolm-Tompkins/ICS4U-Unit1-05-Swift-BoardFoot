/*
* Calculates the length of a board foot given a height and width.
* @author  Malcolm Tompkins
* @version 1.0
* @since 2020-11-27
*/

import Foundation

input()

// Constants

let boardFootSize: Double = 144
// Function for input

func input() {
    print("Input the height: ")
    let userHeight = readLine()!
    print("Input the width: ")
    let userWidth = readLine()!
    if let userHeight = Double(userHeight) {
        if let userWidth = Double(userWidth) {
            let length: Double = calculateLength(height: userHeight, width: userWidth)
            print("The wood should be \(length) inch(es) long.")
            print("Done.")
        } else {
          print("Invalid width")
          exit(0)
        }
    } else {
      print("Invalid height")
      exit(0)
    }
}

// Function for calculations
func calculateLength (height: Double, width: Double) -> Double {
   let length: Double = boardFootSize / (height * width)
   return length
}
