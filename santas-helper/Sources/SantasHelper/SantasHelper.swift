import Foundation

func cartesianToPolar(_ cart: (x: Double, y: Double)) -> (r: Double, phi: Double) {
  var polar: (Double, Double)
  polar.0 = sqrt(pow(cart.x, 2) + pow(cart.y, 2))
  polar.1 = atan2(cart.y, cart.x)
  return polar
}

func combineRecords(
  production: (toy: String, id: Int, productLead: String),
  gifts: (Int, [String])
) -> (id: Int, toy: String, productLead: String, recipients: [String]) {
  return (gifts.0, production.toy, production.productLead, gifts.1)
}
