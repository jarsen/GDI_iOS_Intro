# Lesson Plan 1 - PizzaNow

These are some notes to me that may or may not make sense but remind me of how
to proceed with the first example app.

Goals:
* be introduced to Interface Builder and Xcode projects
* Use a button and text field.
* Use an alert
* Implement a delegate

- Make new Single View Project named PizzaNow
- Show project viewer. Show capabilities and other tabs briefly
- go back to general. link to MapKit
- Brief overview of files created:
- storyboard
- AppDelegate
- ViewController
- Tests
- add a map view
- add a small transparent view across top
- Add a text field and button that says "pizza now" at the top
- change background to dark and transparent
- change color of button
- give text field different border and placeholder text. make text lighter color.
- run the app. uh oh.
- try rotating app
- go back to interface builder. peg map view to sides
- run again. rotate. do cmd+y to simulate call bar
- awesome, but wouldn't it be annoying to run the app every time to see layout? plus different devices
- show assistant editor
- Put together in a stack view
- add constraints for container view
- put label and button in stack view
- put constraints on stack view (make 200 wide and 70 tall)(make stack view equal spacing)
- change assistant view to view controller
- delete unnecessary method
- make `pressedSendNow` @IBAction
- log a message from pressed button
- test the button
- let's log a message about what pizza we're sending. How do we get the text from our field?
- add `pizzaTextField` @IBOutlet
- change print to use interpolated string with pizza name
- Optional pizza?! put inside an if-let
- let's use an alert so the user can see it
- look in documentation at UIAlertController by option+double clicking
- read in docs how to create, and how to display using presentViewController
- run. uh oh, we don't have any buttons! back to docs.
```
let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
alert.addAction(okAction)
```
- wouldn't it be cool if we used the location on the map?
- first we need an IBOutlet for the map view and to `import MapKit`
- opt click on MKMapView for documentation
- go to "Displaying User's location"
- implement
```swift
func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation) {
    let coordinate = userLocation.coordinate
    let region = MKCoordinateRegionMakeWithDistance(coordinate, 2000, 2000)
    mapView.region = region
}
```

# Lesson Plan 2 - Pizza Log
App that keeps track of pizza notes.
