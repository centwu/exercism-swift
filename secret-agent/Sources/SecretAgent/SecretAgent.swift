func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func checkPassword(_ key: String) -> String {
    if password == key{
      return secret
    }
    return "Sorry. No hidden secrets here."
  }
  return checkPassword
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let first: Int = f(room)
  let second: Int = f(first)
  let third: Int = f(second)
  return (first, second, third)
}
