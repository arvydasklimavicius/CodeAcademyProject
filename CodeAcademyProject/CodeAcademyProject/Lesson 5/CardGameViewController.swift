

import UIKit

class CardGameViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet var cardButton: [UIButton]!
    @IBOutlet weak var hardModeLbl: UILabel!
    @IBOutlet weak var informationalTxtLbl: UILabel!
    
    
    
    var symbols = ["🦋", "🐞", "🐙", "🦖", "🐊", "🦞", "🦂", "🐠","🦋", "🐞", "🐙", "🦖", "🐊", "🦞", "🦂", "🐠"]
    
    var lastCardIndex = -1
    var matchPoints = 0
    let scoreToBeat = 12
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        symbols.shuffle()
        hardModeLbl.text = "Normal Mode"
        
        
        
        
        
    }
    
    @IBAction func cardTapAction(_ sender: UIButton) {
        
        
        let buttonIndex = cardButton.firstIndex(of: sender)!
        let symbolTapped = symbols[buttonIndex]
        
        sender.setTitle(symbolTapped, for: .normal)
        
        guard lastCardIndex != -1 else {
            lastCardIndex = buttonIndex
            return
            
        }
        
        let lastSymbol = symbols[lastCardIndex]
        let lastButton = cardButton[lastCardIndex]
        
        if lastSymbol == symbolTapped {
            matchPoints += 3
            matchCardButton(lastButton)
            matchCardButton(sender)
 
        } else {
            
            matchPoints -= 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                self.flipCardButton(of: lastButton)
                self.flipCardButton(of: sender)
            }

        }
        if matchPoints < 0 {
            matchPoints = 0
        }
        
        lastCardIndex = -1
        countLabel.text! = ("\(matchPoints)")

//        if matchPoints >= scoreToBeat {
//            informationalTxtLbl.text = "You Win!!!"
//        }
   
    }
    
    func matchCardButton(_ button: UIButton) {
        button.isUserInteractionEnabled = false
        button.alpha = 0.4
        
    }
    
    func flipCardButton(of button: UIButton) {
        button.setTitle("", for: .normal)
        

    }
    
    func resetGame() {
        cardButton.forEach { button in
            button.isUserInteractionEnabled = true
            button.alpha = 1
            button.setTitle("", for: .normal)
            matchPoints = 0
            countLabel.text! = ("\(matchPoints)")
            informationalTxtLbl.text = ""
        }
    }
    
    @IBAction func resetGame(_ sender: Any) {
        
        resetGame()
        
    }
    
    @IBAction func hardModeEnabled(_ sender: UISwitch) {
        
        //let scoreToBeat = 12
        
        if sender.isOn {
            view.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
            hardModeLbl.text = "Hard Mode"
            informationalTxtLbl.text = ("Score to Beat \(scoreToBeat)")
            print("Hard Mode Enabled")
            
//            if matchPoints >= scoreToBeat {
//                informationalTxtLbl.text = "YOU WIN!!!"
//            }
            
        } else {
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            resetGame()
            hardModeLbl.text = "Normal Mode"
            informationalTxtLbl.text = ""
            
        }
        
        
    }
    
    
    
    
}
