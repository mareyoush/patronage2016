//: Playground - noun: a place where people can play

import UIKit

class Card: CustomStringConvertible {
    
    var obverse:String
    var reverse:String
    var learned:Bool = false
    var tips:[String] = []
    
    
    var description: String {
        return "\(obverse) -> \(reverse) [\(tips.joinWithSeparator(", "))]"
    }
    
    init(obverse:String, reverse:String, tips:[String] ){
        self.obverse = obverse
        self.reverse = reverse
        self.tips = tips
    }

}

var newCard = Card(obverse: "Best phone in the world?", reverse: "iPhone", tips: ["The first letter is 'i'", "Designed by Apple"])


newCard.description


