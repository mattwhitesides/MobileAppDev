import UIKit

//Main Background
let view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 320.0, height: 480.0))
view.backgroundColor = UIColor(red: (240.0/255.0), green: (230.0/255.0), blue: (242.0/255.0), alpha: 1.0)

//First Green Subview
//Top: 20.0
//Right: -16.0
//Bottom: -10.0
//Left: 16.0

let greenView = UIView(frame: CGRectZero)
greenView.backgroundColor = UIColor(red: (143.0/255.0), green: (255.0/255.0), blue: 0.0, alpha: 1.0)

let greenViewConstraints = [
    NSLayoutConstraint(item: greenView, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 20.0),
    NSLayoutConstraint(item: greenView, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: -16.0),
    NSLayoutConstraint(item: greenView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: -10.0),
    NSLayoutConstraint(item: greenView, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 16.0)
]

greenView.setTranslatesAutoresizingMaskIntoConstraints(false)
view.addSubview(greenView)
view.addConstraints(greenViewConstraints)

//Yellow Subview

//Top related to green's center Y: 3.0
//Right related to green's right: -10.0
//Bottom related to green's bottom: -10.0
//Left related to green's left: 10.0

let yellowView = UIView(frame: CGRectZero)
yellowView.backgroundColor = UIColor(red: 1.0, green: (235.0/255.0), blue: (54.0/255.0), alpha: 1.0)

let yellowViewConstraints = [
    NSLayoutConstraint(item: yellowView, attribute: .Top, relatedBy: .Equal, toItem: greenView, attribute: .CenterY, multiplier: 1.0, constant: 3.0),
    NSLayoutConstraint(item: yellowView, attribute: .Right, relatedBy: .Equal, toItem: greenView, attribute: .Right, multiplier: 1.0, constant: -10.0),
    NSLayoutConstraint(item: yellowView, attribute: .Bottom, relatedBy: .Equal, toItem: greenView, attribute: .Bottom, multiplier: 1.0, constant: -10.0),
    NSLayoutConstraint(item: yellowView, attribute: .Left, relatedBy: .Equal, toItem: greenView,attribute: .Left, multiplier: 1.0, constant: 10.0)
]

yellowView.setTranslatesAutoresizingMaskIntoConstraints(false)

greenView.addSubview(yellowView)
greenView.addConstraints(yellowViewConstraints)

//Orange Subview

//Top related to green's top: 10.0
//Right related to green's right: -10.0
//Bottom related to green's center Y: -3.0
//Left related to green's center X: 3.0

let orangeView = UIView(frame: CGRectZero)
orangeView.backgroundColor = UIColor(red: 1.0, green: (124.0/255), blue: 0, alpha: 1.0)

let orangeViewConstraints = [
    NSLayoutConstraint(item: orangeView, attribute: .Top, relatedBy: .Equal, toItem: greenView, attribute: .Top, multiplier: 1.0, constant: 10.0),
    NSLayoutConstraint(item: orangeView, attribute: .Right, relatedBy: .Equal, toItem: greenView, attribute: .Right, multiplier: 1.0, constant: -10.0),
    NSLayoutConstraint(item: orangeView, attribute: .Bottom, relatedBy: .Equal, toItem: greenView, attribute: .CenterY, multiplier: 1.0, constant: -3.0),
    NSLayoutConstraint(item: orangeView, attribute: .Left, relatedBy: .Equal, toItem: greenView, attribute: .CenterX, multiplier: 1.0, constant: 3.0)
]

orangeView.setTranslatesAutoresizingMaskIntoConstraints(false)

greenView.addSubview(orangeView)
greenView.addConstraints(orangeViewConstraints)

//Blue Subview

//Top related to green's top: 10.0
//Right related to Orange's left: -6.0
//Bottom related to green's center Y: -3.0
//Left related to green's left: 10.0

let blueView = UIView(frame: CGRectZero)
blueView.backgroundColor = UIColor(red: (107.0/255.0), green: (215.0/255), blue: 1.0, alpha: 1.0)

let blueViewConstraints = [
    NSLayoutConstraint(item: blueView, attribute: .Top, relatedBy: .Equal, toItem: greenView, attribute: .Top, multiplier: 1.0, constant: 10.0),
    NSLayoutConstraint(item: blueView, attribute: .Right, relatedBy: .Equal, toItem: orangeView, attribute: .Left, multiplier: 1.0, constant: -6.0),
    NSLayoutConstraint(item: blueView, attribute: .Bottom, relatedBy: .Equal, toItem: greenView, attribute: .CenterY, multiplier: 1.0, constant: -3.0),
    NSLayoutConstraint(item: blueView, attribute: .Left, relatedBy: .Equal, toItem: greenView, attribute: .Left, multiplier: 1.0, constant: 10.0)
]

blueView.setTranslatesAutoresizingMaskIntoConstraints(false)

greenView.addSubview(blueView)
greenView.addConstraints(blueViewConstraints)
greenView.layoutIfNeeded()

view
