import Darwin
func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  guard diameter ?? -1 > 0 else {
    return nil
  }
  
  guard slices ?? 0 > 1 else {
    return nil
  }
  
  return Double.pi * pow(diameter!, 2) / 4 / Double(slices!)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  let diaA = Int(diameterA)
  let diaB = Int(diameterB)
  
  guard diaA ?? -1 >= 0 && Int(slicesA) ?? 0 > 1 else {
    guard diaB ?? -1 >= 0 && Int(slicesB) ?? 0 > 1  else {
      return "Neither slice is bigger"
    }
    return "Slice B is bigger"
  }
  
  guard diaB ?? -1 >= 0 && Int(slicesB) ?? 0 > 1  else {
    return "Slice A is bigger"
  }
  
  let areaA = Double.pi * pow(Double(diaA!), 2) / 4 / (Double(slicesA)!)
  let areaB = Double.pi * pow(Double(diaB!), 2) / 4 / (Double(slicesB)!)
  
  return areaA > areaB ? "Slice A is bigger" : areaA == areaB ? "Neither slice is bigger" : "Slice B is bigger"
}
