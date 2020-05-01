//
//  ViewController.swift
//  calculator
//
//  Created by uju_sy on 2020/04/28.
//  Copyright © 2020 uju_sy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var allButtons: [UIButton]!

    @IBOutlet weak var resultLabel: UILabel!
    
    var sum : Int? = 0
    var num : Int? = 0
    var labelval:String = "";
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setLayout()
    }
    func setLayout(){
        allButtons.forEach({
            $0.layer.cornerRadius = $0.layer.frame.size.height  * 0.44
        })
        
        
    }
    
    var tapped = false
    @IBAction func buttonTapped(_ sender: UIButton) {
        let button = sender.titleLabel?.text
        
        if tapped {
            resultLabel.text = resultLabel.text!+button!
        }else{
            resultLabel.text = button!
            tapped = true
        }
        
    }
    var op = "+"
    
    @IBAction func acButton(_ sender: Any) {
        sum = 0
        num = 0
        resultLabel.text = ""
    }
    var isPlus = false
    @IBAction func plusButton(_ sender: UIButton) {

//        if isPlus == false {
////            num = Int(resultLabel.text!)
//            num = (Int(resultLabel.text!)!)
//            print(num)
////            sum = num!
//            tapped = false
//            isPlus = true
//        }
   if isPlus == false {
               if let tmp_num = (Int(resultLabel.text!)!) {
                   print(tmp_num)
                   tapped = false
                   isPlus = true
               }
   //            sum = num!
               
           }
       
    }
    
    @IBAction func equalButton(_ sender: UIButton) {
//        let num2 = Int(resultLabel.text!)
//        var result : Int?
//        switch op{
//        case "+":
//            result = num! + num2!
//        default :
//            result = 0
//
//        }
        if isPlus{
            let num2 = Int(resultLabel.text!)
            sum = num2! + num!
            }
        resultLabel.text = String(sum!)
        sum = 0

    }
}

