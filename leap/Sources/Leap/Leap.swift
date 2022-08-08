//Solution goes in Sources
class Year {
  let isLeapYear: Bool
  init(calendarYear year: Int) {
    self.isLeapYear = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
  }
}
