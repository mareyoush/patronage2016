import UIKit


class Card: CustomStringConvertible {
    
    var obverse:String
    var reverse:String
    var learned: Bool = false
    var tips:[Tip] = []
    
    init(obverse:String, reverse:String, tips:[Tip]){
        self.obverse = obverse
        self.reverse = reverse
        self.tips = tips
    }
    
    enum Tip: CustomStringConvertible, CustomDebugStringConvertible {
        case Text(text:String)
        case Image(image:UIImage)
        case Audio(audioURL:String)
       
        
        var description: String {
                switch self {
                    case let .Text(text): return text
                    case let .Image(image): return String(image)
                    case let .Audio(audioURL): return audioURL
                }
            
        }
        var debugDescription: String {
                switch self {
                    case let .Text(text): return "[DEBUG_TEXT]:\(text)"
                    case let .Image(image): return "[DEBUG_IMAGE]: \(String(image))"
                    case let .Audio(audio): return "[DEBUG_AUDIO]: \(audio)"
                }
           
                
        }
        
    }
    
    var description: String {
        
        var str:String=""
        for (var i = 0; i <= tips.count-2; ++i){
            str += "\(tips[i].description), "
        }
        
        str += tips[tips.count-1].description
        return "\(obverse) -> \(reverse) [ \(str) ]"
    }

    
    
}


var newCard = Card(obverse: "The best phone in the world?", reverse: "iPhone", tips: [.Text(text: "The first letter is 'i'"), .Text(text: "Designed by Apple"), .Image(image: UIImage(named: "apple")!),.Audio(audioURL: "http://sound.example.com")])


newCard.description
