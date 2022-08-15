//Solution goes in Sources

enum InputError: Error {
  case LessThanOne
}

class CollatzConjecture {
  static func steps(_ n: Int) throws -> Int {
    guard n > 0 else {
      throw InputError.LessThanOne
    }
    
    var num = n
    var step = 0
    while (num > 1) {
      num = num % 2 == 0 ? num / 2 : num * 3 + 1
      step += 1
    }
    return step
  }
}
