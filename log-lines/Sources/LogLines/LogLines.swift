// TODO: define the 'LogLevel' enum, its `init`, and its `shortFormat` method
enum LogLevel: Int {
  case trace
  case debug
  case info = 4
  case warning
  case error
  case fatal
  case unknown = 42
  
  init(_ log: String) {
    let level = log[...(log.firstIndex(of: "]") ?? log.index(log.startIndex, offsetBy: 4))]
    switch level {
    case "[TRC]":
      self = .trace
    case "[DBG]":
      self = .debug
    case "[INF]":
      self = .info
    case "[WRN]":
      self = .warning
    case "[ERR]":
      self = .error
    case "[FTL]":
      self = .fatal
    default:
      self = .unknown
    }
  }
  
  func shortFormat(message: String) -> String {
    return "\(self.rawValue):\(message)"
  }
}
