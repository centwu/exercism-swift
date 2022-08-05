// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
  return expectedMinutesInOven - elapsedMinutes
}
// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
  var total = 0
  for _ in layers {
    total += 2
  }
  return total
}
// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
  var quantity: (Int, Double) = (0, 0.0)
  for layer in layers {
    if layer == "sauce" {
      quantity.1 += 0.2
    }
    if layer == "noodles" {
      quantity.0 += 3
    }
  }
  return quantity
}
// TODO: define the 'toOz' function
func toOz(_ amount: inout (noodles: Int, sauce: Double)) {
  amount.1 *= 33.814
}
// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
  var redWine: Int = 0
  var whiteWine: Int = 0
  for layer in layers {
    if layer == "meat" || layer == "sauce" {
      redWine += 1
    }
    if layer == "mozzarella" || layer == "ricotta" || layer == "béchamel" {
      whiteWine += 1
    }
  }
  return redWine >= whiteWine
}
