//
//  ProductoSlide3Pop2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 08-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class ProductoSlide3Pop2ViewController: UIViewController {

    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo1: SpringImageView!
    @IBOutlet var titulo2: SpringImageView!
    
    @IBOutlet var texto1: SpringImageView!
    @IBOutlet var texto2: SpringImageView!
    
    @IBOutlet var img1: SpringImageView!
    @IBOutlet var img2: SpringImageView!
    
    @IBOutlet var smile1: SpringImageView!
    @IBOutlet var smile2: SpringImageView!
    @IBOutlet var smile3: SpringImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        
        
        titulo1.opacity      = 0.0
        titulo1.animation    = "animalPop"
        titulo1.curve        = "easeIn"
        titulo1.delay        = 0.1
        titulo1.duration     = 0.5
        titulo1.animate()
        
        img1.opacity      = 0.0
        img1.animation    = "slideRight"
        img1.curve        = "easeIn"
        img1.delay        = 0.4
        img1.duration     = 0.5
        img1.animate()
        
        titulo2.opacity      = 0.0
        titulo2.animation    = "animalPop"
        titulo2.curve        = "easeIn"
        titulo2.delay        = 0.8
        titulo2.duration     = 0.5
        titulo2.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "slideRight"
        img2.curve        = "easeIn"
        img2.delay        = 1.2
        img2.duration     = 0.5
        img2.animate()
  
        texto1.opacity      = 0.0
        texto1.animation    = "fadeIn"
        texto1.curve        = "easeIn"
        texto1.delay        = 1.5
        texto1.duration     = 0.5
        texto1.animate()
        
        texto2.opacity      = 0.0
        texto2.animation    = "slideRight"
        texto2.curve        = "easeIn"
        texto2.delay        = 1.8
        texto2.duration     = 0.5
        texto2.animate()
        
 
        smile1.opacity      = 0.0
        smile1.animation    = "animalPop"
        smile1.curve        = "easeIn"
        smile1.delay        = 2.2
        smile1.duration     = 0.5
        smile1.animate()
        
        smile2.opacity      = 0.0
        smile2.animation    = "animalPop"
        smile2.curve        = "easeIn"
        smile2.delay        = 2.4
        smile2.duration     = 0.5
        smile2.animate()
        
        smile3.opacity      = 0.0
        smile3.animation    = "animalPop"
        smile3.curve        = "easeIn"
        smile3.delay        = 2.6
        smile3.duration     = 0.5
        smile3.animate()
        
        delay(delay: 3.0){
            self.btnExit.isHidden = false
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
