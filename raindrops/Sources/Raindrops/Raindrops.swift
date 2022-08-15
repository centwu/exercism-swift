//Solution goes in Sources
class Raindrops {
  var sounds: String = ""
  init(_ drops: Int) {
    if drops.isMultiple(of: 3) {
      self.sounds += "Pling"
    }
    if drops.isMultiple(of: 5) {
      self.sounds += "Plang"
    }
    if drops.isMultiple(of: 7) {
      self.sounds += "Plong"
    }
    if self.sounds.isEmpty {
      self.sounds = String(drops)
    }
    
  }
}
