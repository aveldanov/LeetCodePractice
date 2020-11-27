
// https://www.dropbox.com/s/66xo8f483hb9rb1/Columnar%20Layout%201.png?dl=0

struct Point {
  var x: Int
  var y: Int
}

struct Size {
  var width: Int
  var height: Int
}

public class ColumnarLayout {
  static func layoutChildViews(parentViewSize: Size, childViewSizes: [Size]) throws -> [Point] {


    var arrPoint = [Point]()
    var nextX = 0
    var nextY = 0
    var runningWidth = 0
    
    var maxHeight = parentViewSize.height
    let maxWidthTotal = parentViewSize.width
    
    
    var point = Point(x: nextX, y: nextY)
    var maxWidth = 0 //max width in a column
    
    

    for item in childViewSizes{
      if item.height < maxHeight{ //pile up a column
        
        arrPoint.append(point)
        
        nextY += item.height
        maxHeight-=nextY
        point.x = nextX
        point.y = nextY
        if maxWidth < item.width{
          maxWidth = item.width
        }
      }else{ // moving to a new column
        nextY = 0
        nextX += maxWidth
        point.x = nextX
        point.y = nextY
        arrPoint.append(point)
        maxHeight = parentViewSize.height
        maxWidth = 0 // resetting maxWidth per column
        runningWidth += maxWidth // adding to a running width when a new column added
      }
      
      if runningWidth > maxWidthTotal{ //checking if runningWidth more than total parentWidth
        break
      }
    }
    

    //print out points
    for item in arrPoint{
        print("X= ", item.x)
        print("Y= ", item.y)
    }
    
    return arrPoint
  }
}


let parentSize = Size(width:5, height:5)

let child1 = Size(width: 2, height: 2)
let child2 = Size(width: 2, height: 2)
let child3 = Size(width: 2, height: 2)

print(try ColumnarLayout.layoutChildViews(parentViewSize: parentSize, childViewSizes: [child1,child2, child3]))
 


