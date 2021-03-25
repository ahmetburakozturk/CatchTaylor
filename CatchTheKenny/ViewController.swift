//
//  ViewController.swift
//  CatchTheKenny
//
//  Created by ahmet burak öztürk on 25.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timeText: UILabel!
    @IBOutlet weak var highScoreText: UILabel!
    @IBOutlet weak var taylor1: UIImageView!
    @IBOutlet weak var taylor2: UIImageView!
    @IBOutlet weak var taylor3: UIImageView!
    @IBOutlet weak var taylor4: UIImageView!
    @IBOutlet weak var taylor5: UIImageView!
    @IBOutlet weak var taylor6: UIImageView!
    @IBOutlet weak var taylor7: UIImageView!
    @IBOutlet weak var taylor8: UIImageView!
    @IBOutlet weak var taylor9: UIImageView!
    @IBOutlet weak var taylor10: UIImageView!
    @IBOutlet weak var taylor11: UIImageView!
    @IBOutlet weak var taylor12: UIImageView!
    @IBOutlet weak var taylor13: UIImageView!
    @IBOutlet weak var taylor14: UIImageView!
    @IBOutlet weak var taylor15: UIImageView!
    @IBOutlet weak var taylor16: UIImageView!
    
    var counter = 0
    var time = Timer()
    var score = 0
    var highscore = 0
    var imageViews = [UIImageView]()
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let saved = UserDefaults.standard.object(forKey: "highscore")
        if let savedHighScore = saved as? Int {
            highScoreText.text = "High Score: \(savedHighScore)"
            highscore = savedHighScore
        }
        
        
        

        catchKenny()
        

    }

    
    
    @objc func imageClick (){
        
        score += 1
        scoreLabel.text = "Score: \(score)"
            
        
    }
    
    
   
    
    
    

    @objc func timeCycle (){
        
        imageViews = [taylor1,taylor2,taylor3,taylor4,taylor5,taylor6,taylor7,taylor8,taylor9,taylor10,taylor11,taylor12,taylor13,taylor14,taylor15,taylor16]
        imageViews[0].isHidden = true
        imageViews[1].isHidden = true
        imageViews[2].isHidden = true
        imageViews[3].isHidden = true
        imageViews[4].isHidden = true
        imageViews[5].isHidden = true
        imageViews[6].isHidden = true
        imageViews[7].isHidden = true
        imageViews[8].isHidden = true
        imageViews[9].isHidden = true
        imageViews[10].isHidden = true
        imageViews[11].isHidden = true
        imageViews[12].isHidden = true
        imageViews[13].isHidden = true
        imageViews[14].isHidden = true
        imageViews[15].isHidden = true
        
        
        timeText.text = "Time: \(counter)"
        counter -= 1
        
        let random = Int.random(in: 0...15)
        imageViews[random].isHidden = false
        
        if counter == 0 {
            time.invalidate()
            timeText.text = "Time is over"
            if score > highscore {
                highscore = score
                UserDefaults.standard.set(highscore, forKey: "highscore")
            }
            
            let alert = UIAlertController(title: "Time End", message: "What you like do?" , preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                self.ok()
            }
            let tryAgainButton = UIAlertAction(title: "Try Again", style: UIAlertAction.Style.default) { (UIAlertAction) in
                self.catchKenny()
            }
            alert.addAction(okButton)
            alert.addAction(tryAgainButton)
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    
    func catchKenny(){
        
        highScoreText.text = "HighScore: \(highscore)"
        scoreLabel.text = "Score:"
        score = 0
        counter = 15
        timeText.text = "Time: \(counter)"
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeCycle), userInfo: nil, repeats: true)
        
        taylor1.isUserInteractionEnabled = true
        taylor2.isUserInteractionEnabled = true
        taylor3.isUserInteractionEnabled = true
        taylor4.isUserInteractionEnabled = true
        taylor5.isUserInteractionEnabled = true
        taylor6.isUserInteractionEnabled = true
        taylor7.isUserInteractionEnabled = true
        taylor8.isUserInteractionEnabled = true
        taylor9.isUserInteractionEnabled = true
        taylor10.isUserInteractionEnabled = true
        taylor11.isUserInteractionEnabled = true
        taylor12.isUserInteractionEnabled = true
        taylor13.isUserInteractionEnabled = true
        taylor14.isUserInteractionEnabled = true
        taylor15.isUserInteractionEnabled = true
        taylor16.isUserInteractionEnabled = true
        
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture2 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture3 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture4 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture5 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture6 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture7 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture8 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture9 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture10 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture11 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture12 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture13 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture14 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture15 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        let gesture16 = UITapGestureRecognizer(target: self, action: #selector(imageClick))
        taylor1.addGestureRecognizer(gesture)
        taylor2.addGestureRecognizer(gesture2)
        taylor3.addGestureRecognizer(gesture3)
        taylor4.addGestureRecognizer(gesture4)
        taylor5.addGestureRecognizer(gesture5)
        taylor6.addGestureRecognizer(gesture6)
        taylor7.addGestureRecognizer(gesture7)
        taylor8.addGestureRecognizer(gesture8)
        taylor9.addGestureRecognizer(gesture9)
        taylor10.addGestureRecognizer(gesture9)
        taylor11.addGestureRecognizer(gesture9)
        taylor12.addGestureRecognizer(gesture9)
        taylor13.addGestureRecognizer(gesture9)
        taylor14.addGestureRecognizer(gesture9)
        taylor15.addGestureRecognizer(gesture9)
        taylor16.addGestureRecognizer(gesture9)
    }
    
    
    func ok (){
        
        scoreLabel.text = "Score: \(score)"
        timeText.text = "Time is over"
        highScoreText.text = "High Score: \(highscore)"
    }
    
    
    
    @IBAction func repeatButton(_ sender: Any) {
        self.catchKenny()
    }
    
    
    
    
    
}

