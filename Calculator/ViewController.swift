import UIKit

class ViewController: UIViewController {
    var opertor = ""
    var numberOne = ""
    var numberTwo = ""
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var UIButton: UIButton!
    
    @IBAction func inputNumber(_ sender: UIButton) {//функция для обработки чисел от 0 до 9
        if opertor.isEmpty {
            numberOne = numberOne + ( sender.titleLabel?.text)!
            resultLabel.text = numberOne
        }else{
            numberTwo = numberTwo + ( sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
    }
    
    @IBAction func clearAction(_ sender: UIButton) {//функция для очистки
        opertor = ""
        numberTwo = ""
        numberOne = ""
        resultLabel.text = "0"
    }
    
    @IBAction func inputOpertor(_ sender: UIButton) {
        opertor = sender.titleLabel?.text as! String
    }
    
    @IBAction func resultAction(_ sender: Any) {
        var result = 0.0
        switch opertor {
        case "/":
            result = Double(numberOne)!/Double(numberTwo)!
        case "*":
            result = Double(numberOne)! * Double(numberTwo)!
        case "+":
            result = Double(numberOne)! + Double(numberTwo)!
        case "-":
            result = Double(numberOne)! - Double(numberTwo)!
        default:
            break
        }
        if result.truncatingRemainder(dividingBy: 1.0) == 00 {
            resultLabel.text = String(Int(result))
        } else {
            resultLabel.text = String(result)
        }
    }
}

 
