import Foundation
class Gigasecond {
  var description: String?
  
  static let dateFormatter: DateFormatter = {
    let dateFormat = DateFormatter()
    dateFormat.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
    
    dateFormat.timeZone = TimeZone(secondsFromGMT: 0)
    return dateFormat
  }()
  
  init?(from text: String) {
    if let text = Gigasecond.dateFormatter.date(from: text) {
      self.description = Gigasecond.dateFormatter.string(from: text.addingTimeInterval(1_000_000_000))
    }
  }
}
