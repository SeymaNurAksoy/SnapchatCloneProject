//
//  SnapVC.swift
//  SnapchatCloneProject
//
//  Created by Şeyma Nur on 20.04.2021.
//

import UIKit
import  Firebase
import ImageSlideshow

class SnapVC: UIViewController {

    var selectedSnap :Snap?
 
    
    var inputArray = [KingfisherSource]()
    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        
        
        if let snap = selectedSnap{
            
            timeLabel.text = "Time Left : \(snap.timeReference)"
            
            for imageUrl in snap.imageUrlArray{
                inputArray.append(KingfisherSource(urlString: imageUrl)!)
            }
            //x,y ve boyutlandırma
            let imageSlideShow = ImageSlideshow(frame: CGRect(x: 10, y: 10, width : self.view.frame.width * 0.95, height: self.view.frame.height * 0.9))
            let pageIndicator = UIPageControl()
            pageIndicator.currentPageIndicatorTintColor = UIColor.lightGray
            pageIndicator.pageIndicatorTintColor = UIColor.black
            imageSlideShow.pageIndicator = pageIndicator
            
            
            imageSlideShow.backgroundColor = UIColor.white
            imageSlideShow.contentScaleMode = UIViewContentMode.scaleAspectFit
            imageSlideShow.setImageInputs(inputArray)
            self.view.addSubview(imageSlideShow)
            self.view.bringSubviewToFront(timeLabel)
            
            
        }
        
        
        
        
        
    }
    



}
