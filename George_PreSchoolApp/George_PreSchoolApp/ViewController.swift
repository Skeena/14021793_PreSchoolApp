//
//  ViewController.swift
//  George_PreSchoolApp
//
//  Created by George Schena on 30/01/2017.
//  Copyright © 2017 GS International. All rights reserved.
//

import UIKit
import AVFoundation

var backgroundMusicPlayer = AVAudioPlayer()

func playBackgroundMusic(filename: String){
    let url = Bundle.main.url(forResource: "Music", withExtension: "wav")
    guard let newURL = url else {
        print("Could not find file: \(filename)")
        return
    }
    do {
        backgroundMusicPlayer = try AVAudioPlayer(contentsOf: newURL)
        backgroundMusicPlayer.numberOfLoops = -1
        backgroundMusicPlayer.prepareToPlay()
        backgroundMusicPlayer.play()
    } catch let error as NSError {
        print(error.description)
    }
    
}

class ViewController: UIViewController {
    
    var audioPlayerCorrect = AVAudioPlayer()
    var audioPlayerWrong = AVAudioPlayer()
    var screenSizeHeight = UIScreen.main.bounds.size.height

    var MyNumbers = [0, 1, 2, 3, 4]
    
    var Num1 = 0
    var Num2 = 0
    var total = 0
    var replay = true
    
    //Apples
    @IBOutlet weak var ap1: UIImageView!
    @IBOutlet weak var ap2: UIImageView!
    @IBOutlet weak var ap3: UIImageView!
    @IBOutlet weak var ap4: UIImageView!
    @IBOutlet weak var ap5: UIImageView!
    @IBOutlet weak var ap6: UIImageView!
    @IBOutlet weak var ap7: UIImageView!
    @IBOutlet weak var ap8: UIImageView!
    @IBOutlet weak var ap9: UIImageView!
    
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
    
        playBackgroundMusic(filename: "Music")
        
        
        congratsView.isHidden = true
        
        Num1 = MyNumbers[Int(arc4random_uniform(4))]
        Num2 = MyNumbers[Int(arc4random_uniform(4))]
        
        total = Num1 + Num2
        resultLabel.text = "\(Num1) + \(Num2) = "
        congratsResultsLabel.text = "\(Num1) + \(Num2) = \(total)"

        
        let musicWrong = Bundle.main.path(forResource: "Incorrect_2.0", ofType: "wav")
        do {
            audioPlayerWrong = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: musicWrong!))
        }
        catch{
            print(error)
        }
        
        
        let musicCorrect = Bundle.main.path(forResource: "Correct_2.0", ofType: "wav")
        do {
            audioPlayerCorrect = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: musicCorrect!))
        }
        catch{
            print(error)
        }
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Button0(_ sender: UIButton) {
        if total == 0{
            congratsResultsLabel.text = "\(Num1) + \(Num2) = 0 "
            audioPlayerCorrect.play()
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
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
            audioPlayerWrong.play()
            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
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
            congratsResultsLabel.text = "\(Num1) + \(Num2) = 1 "
            audioPlayerCorrect.play()
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2

            congratsView.isHidden = false
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
            audioPlayerWrong.play()
            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
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
            congratsResultsLabel.text = "\(Num1) + \(Num2) = 2 "
            audioPlayerCorrect.play()
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
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
            audioPlayerWrong.play()
            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
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
            congratsResultsLabel.text = "\(Num1) + \(Num2) = 3 "
            audioPlayerCorrect.play()
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
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
            audioPlayerWrong.play()

            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
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
            congratsResultsLabel.text = "\(Num1) + \(Num2) = 4 "
            audioPlayerCorrect.play()
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
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
            audioPlayerWrong.play()

            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
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
            congratsResultsLabel.text = "\(Num1) + \(Num2) = 5 "
            audioPlayerCorrect.play()
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
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
            audioPlayerWrong.play()

            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
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
            congratsResultsLabel.text = "\(Num1) + \(Num2) = 6 "
            audioPlayerCorrect.play()
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
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
            audioPlayerWrong.play()

            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
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
            congratsResultsLabel.text = "\(Num1) + \(Num2) = 7 "
            audioPlayerCorrect.play()
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2
            
            congratsView.isHidden = false
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
            audioPlayerWrong.play()

            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
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
            congratsResultsLabel.text = "\(Num1) + \(Num2) = 8 "
            audioPlayerCorrect.play()
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2

            congratsView.isHidden = false
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
            audioPlayerWrong.play()

            
            let bounds = questionMark.bounds
            UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
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
            congratsResultsLabel.text = "\(Num1) + \(Num2) = 9 "
            audioPlayerCorrect.play()
            Num1 = MyNumbers[Int(arc4random_uniform(4))]
            Num2 = MyNumbers[Int(arc4random_uniform(4))]
            
            total = Num1 + Num2

            congratsView.isHidden = false
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
            audioPlayerWrong.play()

            
            let bounds = questionMark.bounds
            
            UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .curveEaseInOut, animations: {
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
            screenSizeHeight = UIScreen.main.bounds.size.height

            if screenSizeHeight == 736{ // iPhones 6+, 6s+, 7+
            ap1.frame = CGRect(x: CGFloat(71), y: CGFloat(621), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
            ap2.frame = CGRect(x: CGFloat(193), y: CGFloat(548), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
            ap3.frame = CGRect(x: CGFloat(302), y: CGFloat(609), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
            ap4.frame = CGRect(x: CGFloat(142), y: CGFloat(636), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
            ap5.frame = CGRect(x: CGFloat(260), y: CGFloat(560), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
            ap6.frame = CGRect(x: CGFloat(54), y: CGFloat(545), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
            ap7.frame = CGRect(x: CGFloat(214), y: CGFloat(621), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
            ap8.frame = CGRect(x: CGFloat(126), y: CGFloat(546), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
            ap9.frame = CGRect(x: CGFloat(7), y: CGFloat(609), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
            }
                
                else if screenSizeHeight == 667 {   // iPhones 6, 6s, 7
                ap1.frame = CGRect(x: CGFloat(64.5), y: CGFloat(563), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                ap2.frame = CGRect(x: CGFloat(176.5), y: CGFloat(496.5), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                ap3.frame = CGRect(x: CGFloat(273.5), y: CGFloat(552), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                ap4.frame = CGRect(x: CGFloat(128.5), y: CGFloat(576.5), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                ap5.frame = CGRect(x: CGFloat(235.5), y: CGFloat(508.5), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                ap6.frame = CGRect(x: CGFloat(49), y: CGFloat(494), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                ap7.frame = CGRect(x: CGFloat(194), y: CGFloat(563), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                ap8.frame = CGRect(x: CGFloat(113.5), y: CGFloat(495), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                ap9.frame = CGRect(x: CGFloat(6.5), y: CGFloat(552), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                }
                    else if screenSizeHeight == 568 {   // iPhones 5, 5s
                    ap1.frame = CGRect(x: CGFloat(55), y: CGFloat(479.5), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                    ap2.frame = CGRect(x: CGFloat(150.5), y: CGFloat(423), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                    ap3.frame = CGRect(x: CGFloat(233.5), y: CGFloat(470), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                    ap4.frame = CGRect(x: CGFloat(110), y: CGFloat(491), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                    ap5.frame = CGRect(x: CGFloat(201), y: CGFloat(433), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                    ap6.frame = CGRect(x: CGFloat(41.5), y: CGFloat(420.5), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                    ap7.frame = CGRect(x: CGFloat(156.5), y: CGFloat(479.5), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                    ap8.frame = CGRect(x: CGFloat(97.5), y: CGFloat(421.5), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                    ap9.frame = CGRect(x: CGFloat(5.5), y: CGFloat(470), width: CGFloat(ap1.frame.size.width), height: CGFloat(ap1.frame.size.height))
                    }
            congratsView.isHidden = true
            
            
            
        }
        
    }
}





