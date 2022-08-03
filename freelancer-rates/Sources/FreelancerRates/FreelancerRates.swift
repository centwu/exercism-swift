func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(8 * hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let monthlyRate: Double = dailyRateFrom(hourlyRate: hourlyRate) * 22
  return (monthlyRate * (100 - discount) / 100).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
  let discountedDailyRate = dailyRate * (100 - discount) / 100
  return (budget / discountedDailyRate).rounded(.down)
}
