//
//  ViewController.swift
//  George_PreSchoolApp
//
//  Created by George Schena on 30/01/2017.
//  Copyright © 2017 GS International. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var locaton = CGPoint(x: 0, y: 0) //location
    
    var MyNumbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    var Num1 = 0
    var Num2 = 0
    var total = 0
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var Apple1: UIImageView!
    @IBOutlet weak var Apple2: UIImageView!
    @IBOutlet weak var Apple3: UIImageView!
    @IBOutlet weak var Apple4: UIImageView!
    @IBOutlet weak var Apple5: UIImageView!
    @IBOutlet weak var Apple6: UIImageView!
    @IBOutlet weak var Apple7: UIImageView!
    @IBOutlet weak var Apple8: UIImageView!
    @IBOutlet weak var Apple9: UIImageView!
    
    // Where Touch Starts
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch : UITouch! = touches.first! as UITouch
        
        locaton = touch.location(in: self.view)
        
        Apple1.center = locaton
    }
    // When Moved
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch : UITouch! = touches.first! as UITouch
        
        locaton = touch.location(in: self.view)
        
        Apple1.center = locaton
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Start Location Of Apple1
        Apple1.center = CGPoint(x: 28, y: 550)
        
        Num1 = MyNumbers[Int(arc4random_uniform(9))]
        Num2 = MyNumbers[Int(arc4random_uniform(9))]
        
        total = Num1 + Num2
        
        while total > 9 {
            Num1 = MyNumbers[Int(arc4random_uniform(9))]
            Num2 = MyNumbers[Int(arc4random_uniform(9))]
            
            total = Num1 + Num2
        }
        
        
        resultLabel.text = "\(Num1) + \(Num2) = "

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    
    @IBAction func Button0(_ sender: UIButton) {
        if total == 0{
            Num1 = MyNumbers[Int(arc4random_uniform(9))]
            Num2 = MyNumbers[Int(arc4random_uniform(9))]
            
            total = Num1 + Num2
            
            while total > 9 {
                Num1 = MyNumbers[Int(arc4random_uniform(9))]
                Num2 = MyNumbers[Int(arc4random_uniform(9))]
                
                total = Num1 + Num2
            }
            
            
            resultLabel.text = "\(Num1) + \(Num2) = "
        
            message.text = "Correct"
        }
        
        else
        {
            message.text = "Incorrect"
        }
        
        
        
        
        
        
    }
    
    @IBAction func Number1(_ sender: UIButton) {
        if total == 1{
            Num1 = MyNumbers[Int(arc4random_uniform(9))]
            Num2 = MyNumbers[Int(arc4random_uniform(9))]
            
            total = Num1 + Num2
            
            while total > 9 {
                Num1 = MyNumbers[Int(arc4random_uniform(9))]
                Num2 = MyNumbers[Int(arc4random_uniform(9))]
                
                total = Num1 + Num2
            }
            
            
            resultLabel.text = "\(Num1) + \(Num2) = "
            
            message.text = "Correct"
        }
            
        else
        {
            message.text = "Incorrect"
        }

    }
    
    @IBAction func Button2(_ sender: UIButton) {
        if total == 2{
            Num1 = MyNumbers[Int(arc4random_uniform(9))]
            Num2 = MyNumbers[Int(arc4random_uniform(9))]
            
            total = Num1 + Num2
            
            while total > 9 {
                Num1 = MyNumbers[Int(arc4random_uniform(9))]
                Num2 = MyNumbers[Int(arc4random_uniform(9))]
                
                total = Num1 + Num2
            }
            
            
            resultLabel.text = "\(Num1) + \(Num2) = "
            
            message.text = "Correct"
        }
            
        else
        {
            message.text = "Incorrect"
        }

    }
    @IBAction func Button3(_ sender: UIButton) {
        if total == 3{
            Num1 = MyNumbers[Int(arc4random_uniform(9))]
            Num2 = MyNumbers[Int(arc4random_uniform(9))]
            
            total = Num1 + Num2
            
            while total > 9 {
                Num1 = MyNumbers[Int(arc4random_uniform(9))]
                Num2 = MyNumbers[Int(arc4random_uniform(9))]
                
                total = Num1 + Num2
            }
            
            
            resultLabel.text = "\(Num1) + \(Num2) = "
            
            message.text = "Correct"
        }
            
        else
        {
            message.text = "Incorrect"
        }

    }
    @IBAction func Button4(_ sender: UIButton) {
        if total == 4{
            Num1 = MyNumbers[Int(arc4random_uniform(9))]
            Num2 = MyNumbers[Int(arc4random_uniform(9))]
            
            total = Num1 + Num2
            
            while total > 9 {
                Num1 = MyNumbers[Int(arc4random_uniform(9))]
                Num2 = MyNumbers[Int(arc4random_uniform(9))]
                
                total = Num1 + Num2
            }
            
            
            resultLabel.text = "\(Num1) + \(Num2) = "
            
            message.text = "Correct"
        }
            
        else
        {
            message.text = "Incorrect"
        }

    }
    @IBAction func Button5(_ sender: UIButton) {
        if total == 5{
            Num1 = MyNumbers[Int(arc4random_uniform(9))]
            Num2 = MyNumbers[Int(arc4random_uniform(9))]
            
            total = Num1 + Num2
            
            while total > 9 {
                Num1 = MyNumbers[Int(arc4random_uniform(9))]
                Num2 = MyNumbers[Int(arc4random_uniform(9))]
                
                total = Num1 + Num2
            }
            
            
            resultLabel.text = "\(Num1) + \(Num2) = "
            
            message.text = "Correct"
        }
            
        else
        {
            message.text = "Incorrect"
        }

    }
    @IBAction func Button6(_ sender: UIButton) {
        if total == 6{
            Num1 = MyNumbers[Int(arc4random_uniform(9))]
            Num2 = MyNumbers[Int(arc4random_uniform(9))]
            
            total = Num1 + Num2
            
            while total > 9 {
                Num1 = MyNumbers[Int(arc4random_uniform(9))]
                Num2 = MyNumbers[Int(arc4random_uniform(9))]
                
                total = Num1 + Num2
            }
            
            
            resultLabel.text = "\(Num1) + \(Num2) = "
            
            message.text = "Correct"
        }
            
        else
        {
            message.text = "Incorrect"
        }

    }
    @IBAction func Button7(_ sender: UIButton) {
        if total == 7{
            Num1 = MyNumbers[Int(arc4random_uniform(9))]
            Num2 = MyNumbers[Int(arc4random_uniform(9))]
            
            total = Num1 + Num2
            
            while total > 9 {
                Num1 = MyNumbers[Int(arc4random_uniform(9))]
                Num2 = MyNumbers[Int(arc4random_uniform(9))]
                
                total = Num1 + Num2
            }
            
            
            resultLabel.text = "\(Num1) + \(Num2) = "
            
            message.text = "Correct"
        }
            
        else
        {
            message.text = "Incorrect"
        }

    }
    @IBAction func Button8(_ sender: UIButton) {
        if total == 8{
            Num1 = MyNumbers[Int(arc4random_uniform(9))]
            Num2 = MyNumbers[Int(arc4random_uniform(9))]
            
            total = Num1 + Num2
            
            while total > 9 {
                Num1 = MyNumbers[Int(arc4random_uniform(9))]
                Num2 = MyNumbers[Int(arc4random_uniform(9))]
                
                total = Num1 + Num2
            }
            
            
            resultLabel.text = "\(Num1) + \(Num2) = "
            
            message.text = "Correct"
        }
            
        else
        {
            message.text = "Incorrect"
        }

    }
    @IBAction func Button9(_ sender: UIButton) {
        if total == 9{
            Num1 = MyNumbers[Int(arc4random_uniform(9))]
            Num2 = MyNumbers[Int(arc4random_uniform(9))]
            
            total = Num1 + Num2
            
            while total > 9 {
                Num1 = MyNumbers[Int(arc4random_uniform(9))]
                Num2 = MyNumbers[Int(arc4random_uniform(9))]
                
                total = Num1 + Num2
            }
            
            
            resultLabel.text = "\(Num1) + \(Num2) = "
            
            message.text = "Correct"
        }
            
        else
        {
            message.text = "Incorrect"
        }

    }
}
