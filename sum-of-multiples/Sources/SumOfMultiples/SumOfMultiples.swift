//Solution goes in Sources
class SumOfMultiples {
  static func toLimit(_ number: Int, inMultiples: [Int]) -> Int {
    var multipleSet = Set<Int>()
    var temp = 0
    var sum = 0
    guard number > 0 else{
      return 0
    }
    for num in 1..<number {
      for multiple in inMultiples {
        if num.isMultiple(of: multiple) {
          multipleSet.insert(num)
        }
        if multipleSet.count > temp {
          sum += num
          temp = multipleSet.count
        }
      }
    }
    return sum
  }
}
