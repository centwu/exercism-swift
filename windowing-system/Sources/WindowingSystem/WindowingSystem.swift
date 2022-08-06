// TODO: Define the Position struct
struct Position {
  var x: Int = 0
  var y: Int = 0
  
  mutating func moveTo(newX: Int, newY: Int) {
    x = newX
    y = newY
  }
}
// TODO: Define the Size struct
struct Size {
  var width: Int = 80
  var height: Int = 60
  
  mutating func resize(newWidth: Int, newHeight: Int) {
    width = newWidth
    height = newHeight
  }
}
// TODO: Define the Window class
class Window {
  var title = "New Window"
  var screenSize = Size(width: 800, height: 600)
  var size = Size()
  var position = Position()
  var contents: String? = nil
  
  func resize(to size: Size) {
    self.size.width = max(1, min(screenSize.width - position.x, size.width))
    self.size.height = max(1, min(screenSize.height - position.y, size.height))
  }
  
  func move(to position: Position) {
    self.position.x = max(0, min(screenSize.width - size.width, position.x))
    self.position.y = max(0, min(screenSize.height - size.height, position.y))
  }
  
  func update(title: String) {
    self.title = title
  }
  
  func update(text: String?) {
    self.contents = text
  }
  
  func display() -> String {
    return "\(title)\nPosition: (\(self.position.x), \(self.position.y)), Size: (\(self.size.width) x \(self.size.height))\n\(contents ?? "[This window intentionally left blank]")\n"
  }
}

var mainWindow: Window {
  let window = Window()
  window.title = "Main Window"
  window.size = Size(width: 400, height: 300)
  window.position = Position(x: 100, y: 100)
  window.contents = "This is the main window"
  return window
}
