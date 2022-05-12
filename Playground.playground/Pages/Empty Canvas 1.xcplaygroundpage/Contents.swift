//: [Previous](@previous) / [Next](@next)
//: # Tortoise Examples
//:
//: The `CanvasGraphics` framework also allows you to draw using a "LOGO turtle" metaphor.
//:
//: [Documentation for the Tortoise abstraction](http://russellgordon.ca/CanvasGraphics/Documentation/Classes/Tortoise.html) is available.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 650
let preferredHeight = 500
/*:
 ## Required code
 
 Lines 21 to 29 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Tortoise class
 
 To use the Tortoise abstraction, just create an instance of the Tortoise class, and provide it with a canvas object that is should draw upon.
 */
canvas.drawAxes(withScale: true, by: 20, color: .black)
// Create a turtle that will draw upon the canvas
let t = Tortoise(drawingUpon: canvas)
let scale = 20
let diagonal = sqrt(2.0)

t.penUp()
t.currentPosition()
t.forward(steps: 2 * scale)
t.left(by: 90)
t.forward(steps: 2 * scale)
t.right(by: 90)
t.currentPosition()



func drawPuzzlePiece(){
    //satrt square
    t.penDown()
    t.forward(steps: 2 * scale)
    t.left(by: 90)
    t.forward(steps: 1 * scale)
    t.right(by: 90)
    t.forward(steps: 1 * scale)
    t.right(by: 90)
    t.forward(steps: 1 * scale)
    t.left(by: 90)
    t.forward(steps: 2 * scale)
    t.left(by: 90)
    t.forward(steps: 2 * scale)
    t.right(by: 90)
    t.forward(steps: 1 * scale)
    t.left(by: 90)
    t.forward(steps: 1 * scale)
    t.left(by: 90)
    t.forward(steps: 1 * scale)
    t.right(by: 90)
    t.forward(steps: 2 * scale)
    t.left(by: 90)
    t.forward(steps: 2 * scale )
    t.right(by: 90)
    t.forward(steps: 1 * scale)
    t.left(by: 90)
    t.forward(steps: 1 * scale)
    t.left(by: 90)
    t.forward(steps: 1 * scale)
    t.right(by: 90)
    t.forward(steps: 2 * scale)
    t.left(by: 90)
    t.forward(steps: 2 * scale)
    t.left(by: 90)
    t.forward(steps: 1 * scale)
    t.right(by: 90)
    t.forward(steps: 1 * scale)
    t.right(by: 90)
    t.forward(steps: 1 * scale)
    t.left(by: 90)
    t.forward(steps: 2 * scale)
    t.left(by: 90)

}

func drawRow() {
    for _ in 1...3 {
        t.currentPosition()
        t.currentHeading()
        drawPuzzlePiece()
        t.currentPosition()
        t.currentHeading()

        // get into posstion to draw next shape
        t.penUp()
        t.forward(steps: 10 * scale)
        t.penDown()
    }

}



func getIntoPOstionFirstRow(){
    t.currentPosition()
    t.currentHeading()
    t.currentPosition()
    t.currentHeading()
    t.left(by: 180)
    t.penUp()
    t.forward(steps: 30 * scale)
    t.right(by: 90)
    t.forward(steps: 5 * scale)
    t.right(by: 90)
    t.forward(steps: 5 * scale)
    t.penDown()
}


func getIntoPostionsSecondRow(){
    t.penUp()
    t.left(by: 180)
    t.forward(steps: 35 * scale)
    t.right(by: 90)
    t.forward(steps: 5  * scale)
    t.right(by: 90)
    t.currentPosition()
    t.currentHeading()
}


func fillPageWithSquares(){
    drawRow()
    getIntoPOstionFirstRow()
    drawRow()
    getIntoPostionsSecondRow()
    drawRow()
    getIntoPOstionFirstRow()
    drawRow()
    getIntoPostionsSecondRow()
    drawRow()
}

fillPageWithSquares()
