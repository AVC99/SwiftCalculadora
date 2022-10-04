//
//  ViewController.swift
//  calculadora
//
//  Created by Arnau Vives on 3/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var acButton: UIButton!
    
    @IBOutlet weak var plusMinusButton: UIButton!
    
    @IBOutlet weak var divisionButton: UIButton!
    @IBOutlet weak var percentageButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    
    @IBOutlet weak var eightButton: UIButton!
    
    @IBOutlet weak var nineButton: UIButton!
    
    @IBOutlet weak var multiplicationButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    
    @IBOutlet weak var sixButton: UIButton!
    
    
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var oneButton: UIButton!
    
    @IBOutlet weak var twoButton: UIButton!
    
    @IBOutlet weak var threeButton: UIButton!
    
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var zeroButton: UIButton!
    
    @IBOutlet weak var commaButton: UIButton!
    
    @IBOutlet weak var equalButton: UIButton!
    
    private var topNumber :Double = 0
    private var result : Double = 0
    private var hasComma : Bool = false
    private var operation : String = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topNumber=0
        result=0
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionHandler(_ sender: UIButton) {
        
        switch sender{
        case zeroButton: addNumber(0)
            break
        case oneButton: addNumber(1)
            break;
        case twoButton: addNumber(2)
            break
        case threeButton: addNumber(3)
            break
        case fourButton: addNumber(4)
            break
        case fiveButton: addNumber(5)
            break
        case sixButton: addNumber(6)
            break
        case sevenButton: addNumber(7)
            break
        case eightButton: addNumber(8)
            break
        case nineButton: addNumber(0)
            break
        case acButton: resetLabel()
            break
        case plusMinusButton:
            invertNumber()
            result=topNumber
            resetTopNumber()
            break
        case percentageButton: print("%")
            break
        case divisionButton:
            operation = "division"
            result=topNumber
            resetTopNumber()
            break
        case multiplicationButton:
            operation = "x"
            result=topNumber
            resetTopNumber()
            break
        case minusButton:
            operation = "-"
            result=topNumber
            resetTopNumber()
            break
        case plusButton:
            operation = "+"
            result=topNumber
            resetTopNumber()
            break
        case equalButton: resolveOperation()
            break
        case  commaButton : print(",")
            break
            
        default : ()
            break;
        }
        setLabel()
    }
    
    private func resetTopNumber(){
        topNumber = 0;
    }
    
    private func resolveOperation(){
        switch operation{
        case "+" : topNumber += result
            break
        case "-" : topNumber -= result
            break
        case "division": topNumber = topNumber / result
            break
        case "x": topNumber = topNumber * result
            break
        default: ()
            break
        }
    }
    
    private func resetLabel(){
        topNumber = 0;
    }
    
    private func invertNumber(){
        topNumber = topNumber * (-1)
    }
    
    private func setLabel(){
        topLabel.text = topNumber.description
    }
    private func addNumber(_ sender: Double){
        if(topNumber == 0) {
            topNumber = sender;
        }else{
            topNumber = topNumber*10
            topNumber += sender
        }
    }
    
}

