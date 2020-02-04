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

canvas.drawShapesWithBorders = false

// Draw custom shapes - start with brown



// Write a function to simplify the steps

func oneFiftyTimes100(point1: Point, point2: Point, point3: Point, point4: Point){
    
    var pointArray : [Point] = []
    pointArray.append(point1)
    pointArray.append(point2)
    pointArray.append(point3)
    pointArray.append(point4)
    canvas.drawCustomShape(with: pointArray)
    
}


// Use loop to draw the top and bottom row of quadrilaterals
canvas.fillColor = brown

// First shape
var points : [Point] = []
points.append(Point(x: 0, y: 220))
points.append(Point(x: 10, y: 220))
points.append(Point(x: 57.5, y: 320))
points.append(Point(x: 0, y: 320))
canvas.drawCustomShape(with: points)


// First shape
points = []
points.append(Point(x: 0, y: 50))
points.append(Point(x: 10, y: 50))
points.append(Point(x: 57.5, y: 150))
points.append(Point(x: 0, y: 150))
canvas.drawCustomShape(with: points)

// Switch from colors

for n in 0...1 {

for y in 0...2 {
    
    
    if y % 2 == 0 {
        canvas.fillColor = purple
    } else {
        canvas.fillColor = brown
    }

// Drwa the shapes (Type switch from Int to Double), add 160 each time to get the coordinates
    
    
    oneFiftyTimes100(point1: Point(x: 67.5+160.0*Double(y), y: 150+170*Double(n)), point2: Point(x: 217.5+160.0*Double(y), y: 150+170*Double(n)), point3: Point(x: 170+160.0*Double(y), y: 50+170*Double(n)), point4: Point(x: 20+160.0*Double(y), y: 50+170*Double(n)))
    
    
    
    
}


}





// Use loop to draw red quadrilateral

canvas.fillColor = lightRed
oneFiftyTimes100(point1: Point(x: 0, y: 235), point2: Point(x: 60, y: 235), point3: Point(x: 15, y: 135), point4: Point(x: 0, y: 135))
for n in 0...2 {
    canvas.fillColor = lightRed
    oneFiftyTimes100(point1: Point(x: 70+160*n, y: 235), point2: Point(x: 220+160*n, y: 235), point3: Point(x: 175+160*n, y: 135), point4: Point(x: 25+160*n, y: 135))
}

// Draw grid lines

for x in stride(from: 0, to: 400, by: 50){
    canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 600))
}


for p in stride(from: 0, to: 600, by: 50){
    canvas.drawLine(from: Point(x: 0 , y: p), to: Point(x: 400, y: p))
}



// Add text

// Subhumans
canvas.drawText(message: "subhumans", at: Point(x: 10, y: 325), size: 48)

// Info #1
canvas.drawText(message: "no age limit", at: Point(x: 15, y: 397), size: 10)
canvas.drawText(message: "advance $6.50, door $7.50", at: Point(x: 15, y: 412), size: 10)
canvas.drawText(message: "friday, april 13 1984", at: Point(x: 15, y: 427), size: 10)


// Info #2
canvas.drawText(message: "los angeles, california", at: Point(x: 150, y: 397), size: 10)
canvas.drawText(message: "1801 s. grand ave.", at: Point(x: 150, y: 412), size: 10)
canvas.drawText(message: "at olympic auditorium", at: Point(x: 150, y: 427), size: 10)

// Info #3
canvas.drawText(message: "new regime & red scare", at: Point(x: 275, y: 397), size: 10)
canvas.drawText(message: "multi death corporations", at: Point(x: 275, y: 412), size: 10)
canvas.drawText(message: "with the tourists", at: Point(x: 275, y: 427), size: 10)

/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.
 
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */









/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.
 
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */



/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.
 
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

