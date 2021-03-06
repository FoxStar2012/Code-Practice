//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class CircleView: UIView {
    
    override func draw(_ rect: CGRect) {
        
        let path = UIBezierPath()
        
        // x^2 + y^2 = r^2
        // cos(⍬) = x / r ==> x = r * con(⍬)
        // sin(⍬) = y / r ==> y = r * sin(⍬)
        
        let radius: Double = Double(rect.width / 2) - 30
        
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        
        path.move(to: CGPoint(x: center.x + CGFloat(radius), y: center.y))
        
        for i in stride(from: 0, to: 361.0, by: 1) {
            
            // radians = degrees * PI / 180
            let radians = i * Double.pi / 180
            
            let x = Double(center.x) + radius * cos(radians)
            let y = Double(center.y) + radius * sin(radians)
            
            path.addLine(to: CGPoint(x: x, y: y))
            
        }
        
        UIColor.blue.set()
        path.lineWidth = 3
        path.stroke()
    }
    
}


let view = CircleView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
view.backgroundColor = .white













