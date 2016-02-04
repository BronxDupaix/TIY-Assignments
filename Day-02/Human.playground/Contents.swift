//: Playground - noun: a place where people can play

import UIKit

//Homework - Human
//Create a playground called "human".
    
//Create multiple classes for body parts. Each class will have specific functions and variables that will make the body part work.

//Objectives

//After completing this assignment, you should…

//Understand how to create and use classes
//Understand how to use scope and functions for classes
    //Understand how and why to use class properties
//Additional Resources

//Read Swift Classes
//Assignment Checklist

//### Normal Mode

//* [ ] Create a Playground named Human.
//* [ ] Make a class named BodyPart.
//* [ ] Create 20 classes that are subclasses of BodyPart.
//* [ ] Each class should have 3 methods that are specific to that part.
//* [ ] Each class should have 3 properties that are specific to that part.

//### Hard Mode

//* [ ] Connect the body parts through properties.
//* [ ] Tell 15 parts to do something from another part... bonus if you can chain 4 + parts through methods.

class Bodypart {
    var numberOfBones: Int
    var coveredInSkin: Bool
    var containMuscle: String
    
    init(numberOfBones:Int, coveredInSkin:Bool, containMuscle: String){
        self.numberOfBones = numberOfBones
        self.coveredInSkin = coveredInSkin
        self.containMuscle = containMuscle
    }
}

class Arm: Bodypart {
    var attachedTo: String = ""
    var length: Double = 0
    var width: Double = 0

    
    func liftingObjects(){
        
    }
    func flexing(){
        
    }
    func containMuscle(){
        
    }
}
    class Hand : Arm {

        func lifingObjects(){
            
        }
        func holdingObjects(){
            
        }
        func gripping(){
            
        }
    }
    
    class Leg : Bodypart{
        
        override init(numberOfBones: Int, coveredInSkin: Bool, containMuscle: String) {
            super.init(numberOfBones: <#T##Int#>, coveredInSkin: <#T##Bool#>, containMuscle: <#T##String#>)
        }

        func standing(){
            
        }
        func kicking(){
            
        }func walking(){
            
        }
    }
    class Torso: Bodypart{
        override init(numberOfBones: Int, coveredInSkin: Bool, containMuscle: String) {
            super.init(numberOfBones: <#T##Int#>, coveredInSkin: <#T##Bool#>, containMuscle: <#T##String#>)
        }
 
        var numberOfNipples: Int
        
        func housingIntestines(){
        }
        func keepingBodyPartsAttached(){
            
        }
        func storingFat(){
            
        }
        
    }

            class chest: Torso{
                
                override init(numberOfBones: Int, coveredInSkin: Bool, containMuscle: String) {
                    super.init(numberOfBones:Int, coveredInSkin: <#T##Bool#>, containMuscle: <#T##String#>)
                }
                var holdChestHair: Bool
                var haveTattoos: Bool
                var houseLungsAndHeart: Bool
                
                override func keepingBodyPartsAttached() {
                    
                }
                func 
    
        }

    class leg: Bodypart{
        var numberOfBones: Int
        var length: Double
        var attachedTo:String
        func liftingObjects()
        func containingMuscle()
        func kicking()
    
    class Head: Bodypart{
        var numberOfOrifices: Int
        var width: Double
        var attachedTo()
        func containsBrain()
        func headbutting()
        func thinking()
    }
        class Shoulder: Bodypart{
            var width: Double
            var attactchedTo: String
            var numberOfBones: Int
            func containMuscle()
            func liftingObjects()
            func punching()
        }
        class Elbow: Bodypart{
            var attachedTo: String
            var numberOfBones: Int
            var width: Double
            func liftingObjects()
            func punching()
            func connectingBodyParts()
        }
        
    
    
}















