func timeToPrepare(drinks: [String]) -> Double {
  var time: Double = 0.0
  for drink in drinks {
    switch drink {
    case "beer", "soda", "water":
      time += 0.5
    case "shot":
      time += 1.0
    case "mixed drink":
      time += 1.5
    case "fancy drink":
      time += 2.5
    case "frozen drink":
      time += 3.0
    default:
      time += 0
    }
  }
  return time
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  guard limes.count > 0 else {
    return 0
  }
  var need = needed
  var used = 0
  for lime in limes {
    if need <= 0 {
      break
    }
    switch lime {
    case "small":
      need -= 6
    case "medium":
      need -= 8
    case "large":
      need -= 10
    default:
      need -= 0
    }
    used += 1
  }
  return used
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  var minutes = Double(minutesLeft)
  var doneOrder = 0
  for order in remainingOrders {
    if minutes < 0 {
      break
    }
    minutes -= timeToPrepare(drinks: order)
    doneOrder += 1
  }
  
  return Array(remainingOrders.dropFirst(doneOrder))
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
  var beer: (first: String, last: String, total: Int)? = nil
  var soda: (first: String, last: String, total: Int)? = nil
  for order in orders {
    switch order.drink {
    case "beer":
      if var beerStatus = beer {
        beerStatus.last = order.time
        beerStatus.total += 1
        beer = beerStatus
      } else {
        beer = (order.time, order.time, 1)
      }
    case "soda":
      if var sodaStatus = soda {
        sodaStatus.last = order.time
        sodaStatus.total += 1
        soda = sodaStatus
      } else {
        soda = (order.time, order.time, 1)
      }
    default:
      continue
    }
  }
  return (beer, soda)
}
