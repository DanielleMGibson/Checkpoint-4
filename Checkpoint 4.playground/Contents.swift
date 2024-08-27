import UIKit

enum sqrtErrors: Error {
    case outOfBounds
    case noRoot
}

func returnSqrt(_ input: Int) throws {
    if input < 1 || input > 10_000 {throw sqrtErrors.outOfBounds}
    else if input >= 1 && input <= 10_000{ for i in 1...100{
        if input == i * i {
            print("\(i)")
      }
    }
  }
}

let input = 16
do {
    let result = try returnSqrt(input)
    print("\(input) has a square root!")
} catch sqrtErrors.outOfBounds {
    print("This number is out of bounds")
} catch sqrtErrors.noRoot {
    print("This number has no integer root")
}
