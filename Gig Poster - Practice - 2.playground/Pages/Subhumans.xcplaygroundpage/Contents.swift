//: # Gig Poster - Practice Task 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![subhumans-no-grid](subhumans-no-grid.png "Subhumans")
 ![subhumans-with-grid](subhumans-with-grid.png "Subhumans")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a list of related objects or values)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let yellow = Color(hue: 45, saturation: 99, brightness: 100, alpha: 100)
let purple = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)
let brown = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)
let lightRed = Color(hue: 10, saturation: 80, brightness: 80, alpha: 75)

// Begin your solution here...

// Background Color
canvas.fillColor = yellow
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)



// Draw custom shapes - start with brown

canvas.fillColor = brown

var points : [Point] = []
points.append(Point(x: 0, y: 50))
points.append(Point(x: 10, y: 50))
points.append(Point(x: 57.5, y: 150))
points.append(Point(x: 0, y: 150))

canvas.drawCustomShape(with: points)

// Write a function to simplify the steps

func oneFiftyTimes100(point1: Point, point2: Point, point3: Point, point4: Point){
    
    var pointArray : [Point] = []
    pointArray.append(point1)
    pointArray.append(point2)
    pointArray.append(point3)
    pointArray.append(point4)
    canvas.drawCustomShape(with: pointArray)
    
}





// Use hoop to draw red quadrilateral
canvas.fillColor = lightRed
oneFiftyTimes100(point1: Point(x: 0, y: 235), point2: Point(x: 60, y: 235), point3: Point(x: 15, y: 135), point4: Point(x: 0, y: 135))
for n in 0...2 {
    canvas.fillColor = lightRed
    oneFiftyTimes100(point1: Point(x: 70+160*n, y: 235), point2: Point(x: 220+160*n, y: 235), point3: Point(x: 175+160*n, y: 135), point4: Point(x: 25+160*n, y: 135))
}
/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.
 
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

