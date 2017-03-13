//
//  ViewController.swift
//  George_PreSchoolApp
//
//  Created by George Schena on 30/01/2017.
//  Copyright © 2017 GS International. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var MyNumbers = [0, 1, 2, 3, 4]
    
    var Num1 = 0
    var Num2 = 0
    var total = 0
    var replay = true
    
    // Star Images
    @IBOutlet weak var star5: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star1: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var questionMark: UILabel!
    @IBOutlet weak var congratsView: UIView!
    @IBOutlet weak var congratsResultsLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        congratsView.isHidden = true
        
        Num1 = MyNumbers[Int(arc4random_uniform(4))]
        Num2 = MyNumbers[Int(arc4random_uniform(4))]
        
        total = Num1 + Num2
        resultLabel.text = "\(Num1) + \(Num2) = "


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Button0(_ sender: UIButton) {
        if total == 0{
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
            congratsResultsLabel.text = "The Answer Was 0  "
            resultLabel.text = "\(Num1) + \(Num2) = "
            questionMark.textColor = UIColor.white
            
            self.star1.alpha = 0
            self.star2.alpha = 0
            self.star3.alpha = 0
            self.star4.alpha = 0
            self.star5.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
                self.star1.alpha = 1.0
                self.star2.alpha = 1.0
                self.star3.alpha = 1.0
                self.star4.alpha = 1.0
                self.star5.alpha = 1.0
                
            })
            
            
        }

            
        else
        {
            questionMark.textColor = UIColor.red
            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
                self.questionMark.bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: bounds.size.width + 2.5, height: bounds.size.height)
            }, completion: { (success: Bool) in
                if success{
                    self.questionMark.bounds = bounds
                    self.questionMark.textColor = UIColor.white
                }
            })
        }
        
        
    }
    
    @IBAction func Number1(_ sender: UIButton) {
        if total == 1{
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2

            congratsView.isHidden = false
            congratsResultsLabel.text = "The Answer Was 1  "
            resultLabel.text = "\(Num1) + \(Num2) = "
            questionMark.textColor = UIColor.white
            
            self.star1.alpha = 0
            self.star2.alpha = 0
            self.star3.alpha = 0
            self.star4.alpha = 0
            self.star5.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
                self.star1.alpha = 1.0
                self.star2.alpha = 1.0
                self.star3.alpha = 1.0
                self.star4.alpha = 1.0
                self.star5.alpha = 1.0
                
            })
            
            
        }
            
        else
        {
            questionMark.textColor = UIColor.red
            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
                self.questionMark.bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: bounds.size.width + 2.5, height: bounds.size.height)
            }, completion: { (success: Bool) in
                if success{
                    self.questionMark.bounds = bounds
                    UIView.animate(withDuration: 1, animations: {
                        self.questionMark.textColor = UIColor.white
                    })

                }
            })

        }

    }
    
    @IBAction func Button2(_ sender: UIButton) {
        if total == 2{
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
            congratsResultsLabel.text = "The Answer Was 2  "
            resultLabel.text = "\(Num1) + \(Num2) = "
            questionMark.textColor = UIColor.white
            
            self.star1.alpha = 0
            self.star2.alpha = 0
            self.star3.alpha = 0
            self.star4.alpha = 0
            self.star5.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
                self.star1.alpha = 1.0
                self.star2.alpha = 1.0
                self.star3.alpha = 1.0
                self.star4.alpha = 1.0
                self.star5.alpha = 1.0
                
            })
            
            
        }
        else
        {
            questionMark.textColor = UIColor.red
            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
                self.questionMark.bounds = CGRect(x: bounds.origin.x , y: bounds.origin.y, width: bounds.size.width + 2.5, height: bounds.size.height)
            }, completion: { (success: Bool) in
                if success{
                    self.questionMark.bounds = bounds
                    UIView.animate(withDuration: 1, animations: {
                        self.questionMark.textColor = UIColor.white
                    })

                }
            })

        }

    }
    @IBAction func Button3(_ sender: UIButton) {
        if total == 3{
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
            congratsResultsLabel.text = "The Answer Was 3  "
            resultLabel.text = "\(Num1) + \(Num2) = "
            questionMark.textColor = UIColor.white
            
            self.star1.alpha = 0
            self.star2.alpha = 0
            self.star3.alpha = 0
            self.star4.alpha = 0
            self.star5.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
                self.star1.alpha = 1.0
                self.star2.alpha = 1.0
                self.star3.alpha = 1.0
                self.star4.alpha = 1.0
                self.star5.alpha = 1.0
                
            })
            
            
        }
            
        else
        {
            questionMark.textColor = UIColor.red
            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
                self.questionMark.bounds = CGRect(x: bounds.origin.x , y: bounds.origin.y, width: bounds.size.width + 2.5, height: bounds.size.height)
            }, completion: { (success: Bool) in
                if success{
                    self.questionMark.bounds = bounds
                    UIView.animate(withDuration: 1, animations: {
                        self.questionMark.textColor = UIColor.white
                    })

                }
            })

        }

    }
    @IBAction func Button4(_ sender: UIButton) {
        if total == 4{
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
            congratsResultsLabel.text = "The Answer Was 4  "
            resultLabel.text = "\(Num1) + \(Num2) = "
            questionMark.textColor = UIColor.white
            
            self.star1.alpha = 0
            self.star2.alpha = 0
            self.star3.alpha = 0
            self.star4.alpha = 0
            self.star5.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
                self.star1.alpha = 1.0
                self.star2.alpha = 1.0
                self.star3.alpha = 1.0
                self.star4.alpha = 1.0
                self.star5.alpha = 1.0
                
            })
            
            
        }
        else
        {
            questionMark.textColor = UIColor.red
            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
                self.questionMark.bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: bounds.size.width + 2.5, height: bounds.size.height)
            }, completion: { (success: Bool) in
                if success{
                    self.questionMark.bounds = bounds
                    UIView.animate(withDuration: 1, animations: {
                        self.questionMark.textColor = UIColor.white
                    })

                }
            })

        }

    }
    @IBAction func Button5(_ sender: UIButton) {
        if total == 5{
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
            congratsResultsLabel.text = "The Answer Was 5  "
            resultLabel.text = "\(Num1) + \(Num2) = "
            questionMark.textColor = UIColor.white
            
            self.star1.alpha = 0
            self.star2.alpha = 0
            self.star3.alpha = 0
            self.star4.alpha = 0
            self.star5.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
                self.star1.alpha = 1.0
                self.star2.alpha = 1.0
                self.star3.alpha = 1.0
                self.star4.alpha = 1.0
                self.star5.alpha = 1.0
                
            })
            
            
        }
        else
        {
            questionMark.textColor = UIColor.red
            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
                self.questionMark.bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: bounds.size.width + 2.5, height: bounds.size.height)
            }, completion: { (success: Bool) in
                if success{
                    self.questionMark.bounds = bounds
                    UIView.animate(withDuration: 1, animations: {
                        self.questionMark.textColor = UIColor.white
                    })

                }
            })

        }

    }
    @IBAction func Button6(_ sender: UIButton) {
        if total == 6{
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
            congratsResultsLabel.text = "The Answer Was 6 "
            resultLabel.text = "\(Num1) + \(Num2) = "
            questionMark.textColor = UIColor.white
            
            self.star1.alpha = 0
            self.star2.alpha = 0
            self.star3.alpha = 0
            self.star4.alpha = 0
            self.star5.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
                self.star1.alpha = 1.0
                self.star2.alpha = 1.0
                self.star3.alpha = 1.0
                self.star4.alpha = 1.0
                self.star5.alpha = 1.0
                
            })
            
            
        }
        else
        {
            questionMark.textColor = UIColor.red
            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
                self.questionMark.bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: bounds.size.width + 2.5, height: bounds.size.height)
            }, completion: { (success: Bool) in
                if success{
                    self.questionMark.bounds = bounds
                    UIView.animate(withDuration: 1, animations: {
                        self.questionMark.textColor = UIColor.white
                    })

                }
            })

        }

    }
    @IBAction func Button7(_ sender: UIButton) {
        if total == 7{
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
            congratsResultsLabel.text = "The Answer Was 7  "
            resultLabel.text = "\(Num1) + \(Num2) = "
            questionMark.textColor = UIColor.white
            
            self.star1.alpha = 0
            self.star2.alpha = 0
            self.star3.alpha = 0
            self.star4.alpha = 0
            self.star5.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
                self.star1.alpha = 1.0
                self.star2.alpha = 1.0
                self.star3.alpha = 1.0
                self.star4.alpha = 1.0
                self.star5.alpha = 1.0
                
            })
            
            
        }
        else
        {
            questionMark.textColor = UIColor.red
            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
                self.questionMark.bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: bounds.size.width + 2.5, height: bounds.size.height)
            }, completion: { (success: Bool) in
                if success{
                    self.questionMark.bounds = bounds
                    UIView.animate(withDuration: 1, animations: {
                        self.questionMark.textColor = UIColor.white
                    })

                }
            })

        }

    }
    @IBAction func Button8(_ sender: UIButton) {
        if total == 8{
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2

            congratsView.isHidden = false
            congratsResultsLabel.text = "The Answer Was 8 "
            resultLabel.text = "\(Num1) + \(Num2) = "
            questionMark.textColor = UIColor.white
            
            self.star1.alpha = 0
            self.star2.alpha = 0
            self.star3.alpha = 0
            self.star4.alpha = 0
            self.star5.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
                self.star1.alpha = 1.0
                self.star2.alpha = 1.0
                self.star3.alpha = 1.0
                self.star4.alpha = 1.0
                self.star5.alpha = 1.0
                
            })
            
            
        }
        else
        {
            questionMark.textColor = UIColor.red
            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
                self.questionMark.bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: bounds.size.width + 2.5, height: bounds.size.height)
            }, completion: { (success: Bool) in
                if success{
                    self.questionMark.bounds = bounds
                    UIView.animate(withDuration: 1, animations: {
                        self.questionMark.textColor = UIColor.white
                    })

                }
            })
        }

    }
    @IBAction func Button9(_ sender: UIButton) {
        if total == 9{
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2

            congratsView.isHidden = false
            congratsResultsLabel.text = "The Answer Was 9  "
            resultLabel.text = "\(Num1) + \(Num2) = "
            questionMark.textColor = UIColor.white
            
            self.star1.alpha = 0
            self.star2.alpha = 0
            self.star3.alpha = 0
            self.star4.alpha = 0
            self.star5.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
                self.star1.alpha = 1.0
                self.star2.alpha = 1.0
                self.star3.alpha = 1.0
                self.star4.alpha = 1.0
                self.star5.alpha = 1.0
                
            })
            
            
        }
        else
        {

            self.questionMark.textColor = UIColor.red
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
                self.questionMark.bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: bounds.size.width + 2.5, height: bounds.size.height)
            }, completion: { (success: Bool) in
                if success{
                    self.questionMark.bounds = bounds
                    UIView.animate(withDuration: 1, animations: {
                        self.questionMark.textColor = UIColor.white
                    })
                
                    
                    
                }
            })
                }
            }
    
    @IBAction func replayButton(_ sender: UIButton) {
        replay = true
        if replay == true{
            congratsView.isHidden = true
            
        }
        
    }
}





