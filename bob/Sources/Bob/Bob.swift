//Solution goes in Sources

import Foundation
class Bob {
  static func hey(_ input: String) -> String {
    let range = input.rangeOfCharacter(from: NSCharacterSet.letters)
    if let _ = range {
      if input.uppercased() == input {
        return "Whoa, chill out!"
      }
    }
    if input.last == "?" {
      return "Sure."
    }
    if input.trimmingCharacters(in: .whitespaces).isEmpty {
      return "Fine. Be that way!"
    }
    return "Whatever."
  }
}
