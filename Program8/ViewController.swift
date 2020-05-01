//
//  ViewController.swift
//  Program8
//
//  Created by ben barnes on 5/1/20.
//  Copyright © 2020 ben barnes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var imageOne: UIImageView!
    
    
    @IBOutlet weak var imageTwo: UIImageView!
    
    
    @IBOutlet weak var imageThree: UIImageView!
    
    
    
    @IBOutlet weak var Label: UILabel!
    
    @IBAction func foundTap(_ sender: Any) {
        // On tap show image
        imageOne.isHidden = false
              imageOne.startAnimating()
        Label.text = "Now swipe"
               
           // Hide other images
               if imageOne.isAnimating || imageTwo.isAnimating
               {
                   imageOne.isHidden = true
                   imageTwo.isHidden = true
               }

    }
    
    
    @IBAction func foundSwipe(_ sender: Any) {
        imageTwo.isHidden = false
               imageTwo.startAnimating()
               Label.text = "Now shake"
               
           // Hide all other images
               if imageOne.isAnimating || imageThree.isAnimating
               {
                   imageOne.isHidden = true
                   imageThree.isHidden = true
               }
        

    }
    
    // On shake change to image 3
       override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
           
           if motion==UIEvent.EventSubtype.motionShake {
               imageThree.isHidden = false
              imageThree.startAnimating()
               Label.text = "That was cool!"
              
       // Hide other images
               if imageOne.isAnimating || imageTwo.isAnimating
               {
                   imageOne.isHidden = true
                   imageTwo.isHidden = true
               }
           }
       }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        let imageOneAnimation: [UIImage] = [UIImage(named: "image1")!,]
               imageOne.animationImages = imageOneAnimation
               
               let imageTwoAnimation: [UIImage] = [UIImage(named: "image2")!,]
               imageTwo.animationImages = imageTwoAnimation
               
               let imageThreeAnimation: [UIImage] = [UIImage(named: "image3")!,]
              imageThree.animationImages = imageThreeAnimation
        

    }


}

