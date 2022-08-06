let flip: ((String, String, String)) -> (String, String, String) = {
  ($0.1, $0.0, $0.2)
}
//
//
let rotate: ((String, String, String)) -> (String, String, String) = {
  return ($0.1, $0.2, $0.0)
}

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
  return { (_ id: UInt8, _ wires: (String, String, String)) -> (String, String, String) in
    var wires = wires
    var binaryID = String(id, radix: 2)
    
    for _ in 0..<(8 - binaryID.count) {
      binaryID = "0" + binaryID
    }
    
    for _ in binaryID {
      if binaryID.last! == "1" {
        wires = rotator(wires)
      } else {
        wires = flipper(wires)
      }
      binaryID.removeLast()
    }
    
    return wires
  }
}
