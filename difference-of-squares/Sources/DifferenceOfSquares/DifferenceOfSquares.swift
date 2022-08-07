//Solution goes in Sources
class Squares {
  let number: Int
  
  init(_ number: Int) {
    self.number = number
  }
  
  var squareOfSum: Int {
    return (self.number * (self.number + 1) / 2) * (self.number * (self.number + 1) / 2)
  }
  
  var sumOfSquares: Int {
    return (self.number * (self.number + 1) * (2 * self.number + 1)) / 6
  }
  
  var differenceOfSquares: Int {
    return self.squareOfSum - self.sumOfSquares
  }
}
