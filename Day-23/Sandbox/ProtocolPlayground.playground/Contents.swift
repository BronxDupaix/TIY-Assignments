//: Protocol Oriented Programming

import UIKit

var str = "Oh, Herro"

print(str)


protocol Draggable {
    
    func dragging()
    
}

class Boss <Draggable>  {
    
    func dragging() {
        
        // must be implemented
    }
}


class Secretary {
    
    
    var delegate: Draggable
    
    init(boss: Boss<Draggable>) {
        
        self.delegate = boss
    }
    func dragging() {
        
    // do what needs to be done
        
        
    }
    
}