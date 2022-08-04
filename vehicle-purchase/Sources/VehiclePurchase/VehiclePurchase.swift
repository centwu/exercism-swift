func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let monthlyPayment: Double = price / 60
  if monthlyBudget >= monthlyPayment {
    return "Yes! I'm getting a \(vehicle)"
  } else {
    if monthlyPayment <= monthlyBudget * 1.1 {
      return "I'll have to be frugal if I want a \(vehicle)"
    }
  }
  return "Darn! No \(vehicle) for me"
}

func licenseType(numberOfWheels wheels: Int) -> String {
  switch wheels {
  case 2, 3:
    return "You will need a motorcycle license for your vehicle"
  case 4, 6:
    return "You will need an automobile license for your vehicle"
  case 18:
    return "You will need a commercial trucking license for your vehicle"
  default:
    return "We do not issue licenses for those types of vehicles"
  }
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
  if yearsOld >= 10 {
    return 25
  }
  if msrp > 25000 {
    return (msrp - (msrp * 10 / 100 * yearsOld)) / 100
  }
  return (25000 - (2500 * yearsOld)) / 100
}
