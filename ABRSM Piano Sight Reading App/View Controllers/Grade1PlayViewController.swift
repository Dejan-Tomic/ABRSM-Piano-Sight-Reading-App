//
//  Grade1PlayViewController.swift
//  ABRSM Piano Sight Reading App
//
//  Created by Dejan Tomic on 13/05/2019.
//  Copyright © 2019 Dejan Tomic. All rights reserved.
//

import UIKit

class CircularTimer: UIView {
    fileprivate var TimeElapsedLayer = CAShapeLayer()
    fileprivate var TimeToGoLayer = CAShapeLayer()
    
    var TimeElapsedColor = UIColor.black {
        didSet {
            TimeElapsedLayer.strokeColor = TimeElapsedColor.cgColor
        }
        
    }
    
    var TimeToGoColor = UIColor.white {
        didSet {
            TimeToGoLayer.strokeColor = TimeToGoColor.cgColor
        }
        
    }
}

//fileprivate func createCircularPath() {
 //   createCircularPath().backgroundColor = UIColor.clear
  //createCircularPath.frame.size.width/2
 //   let circlePath = UIBezierPath(arcCenter: (x: frame.size.width/2, y: frame.size.height/2), radius: (frame.size.width - 1.5)/2, startAngle: // <#T##CGFloat#>, endAngle: <#T##CGFloat#>, clockwise: <#T##Bool#>)
//}

class Grade1PlayViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    let grade1SheetMusicList = ["AndanteGrade1", "LivelyGrade1", "ModeratoGrade1", "SadlyGrade1"].shuffled()
  
    var currentGrad1SheetMusicIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
        
        updateGrade1SheetMusic()

}
    func updateGrade1SheetMusic() {
        let grade1SheetMusicName = grade1SheetMusicList[currentGrad1SheetMusicIndex]
        
        let image = UIImage(named: grade1SheetMusicName)
        ImageView.image = image
    }
    
    
    
    @IBAction func gotoNextTest(_ sender: UIButton) {
        currentGrad1SheetMusicIndex += 1
    
        if currentGrad1SheetMusicIndex >= grade1SheetMusicList.count {
            currentGrad1SheetMusicIndex = 0
        }
        updateGrade1SheetMusic()
    }
    
   
    
   
}
