

import UIKit

class ViewController: UIViewController {
    
    // Interface Builder Outlet for First Dice
    @IBOutlet weak var diceImageView1: UIImageView!
    // Interface Builder Outlet for Second Dice
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var sumLabel: UILabel!
    
    let dices = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollButton(_ sender: UIButton) {
        let leftRandom = Int.random(in: 0..<6)
        diceImageView1.image = dices[leftRandom]
        
        let rightRandom = Int.random(in: 0...5)
        diceImageView2.image = dices[rightRandom]
        
        let sum = leftRandom + rightRandom + 2
        
        sumLabel.text = "\(sum)"
    }
    

}

