//
//  Producto2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-02-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto2ViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var arrow: SpringImageView!
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    
 
    @IBOutlet var ask1: SpringImageView!
    @IBOutlet var ask2: SpringImageView!
    @IBOutlet var ask3: SpringImageView!
    @IBOutlet var ask4: SpringImageView!
    
    @IBOutlet var btnNext: UIButton!
 
    @IBOutlet var btnItem2: UIButton!
    @IBOutlet var btnItem3: UIButton!
    @IBOutlet var btnItem4: UIButton!
    @IBOutlet var btnItem5: UIButton!
    
    
    @IBOutlet var swipeLeft2: UISwipeGestureRecognizer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnMenuSlideRight.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.rightRevealToggle(_:)) , for: UIControlEvents.touchDown)
        
        if self.revealViewController() != nil {
            btnMenu.target = self.revealViewController()
            btnMenu.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            self.revealViewController().rightViewRevealWidth        = 268.0
            self.revealViewController().rightViewRevealOverdraw     = 0.0
            self.revealViewController().bounceBackOnOverdraw        = false
            self.revealViewController().springDampingRatio          = 1.0
            self.revealViewController().toggleAnimationDuration     = 0.7
            self.revealViewController().frontViewShadowRadius       = 10
            self.revealViewController().frontViewShadowOffset       = CGSize(width: 0, height: 2.5)
            self.revealViewController().frontViewShadowOpacity      = 1.0
            self.revealViewController().frontViewShadowColor        = UIColor.black
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        
        self.btnNext.isHidden = true
        self.btnItem2.isHidden = true
        self.btnItem3.isHidden = true
        self.btnItem4.isHidden = true
        self.btnItem5.isHidden = true
        
        self.view.removeGestureRecognizer(self.swipeLeft2)
    
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "animalPop"
        texto.curve        = "easeIn"
        texto.delay        = 0.4
        texto.duration     = 0.5
        texto.animate()
        
        ask1.opacity      = 0.0
        ask1.animation    = "fadeIn"
        ask1.curve        = "easeIn"
        ask1.delay        = 1.0
        ask1.duration     = 1.3
        ask1.animate()
        
        self.ask2.opacity      = 0.0
        self.ask2.animation    = "fadeIn"
        self.ask2.curve        = "easeIn"
        ask2.delay             = 2.3
        self.ask2.duration     = 1.3
        self.ask2.animate()
        
        
        ask3.opacity      = 0.0
        ask3.animation    = "fadeIn"
        ask3.curve        = "easeIn"
        ask3.delay        = 3.6
        ask3.duration     = 1.3
        ask3.animate()
        
        ask4.opacity      = 0.0
        ask4.animation    = "fadeIn"
        ask4.curve        = "easeIn"
        ask4.delay        = 4.9
        ask4.duration     = 1.3
        ask4.animate()
       /*
        delay(delay: 1.3){
            self.ask1.opacity      = 0.0
         
        }
        
        delay(delay: 1.7){
            self.ask2.opacity      = 0.0
            self.ask3.opacity      = 0.0
            self.ask3.animation    = "fadeIn"
            self.ask3.curve        = "easeIn"
            self.ask3.duration     = 0.4
            self.ask3.animate()
        }
        
        delay(delay: 2.0){
            self.ask3.opacity      = 0.0
            self.ask4.opacity      = 0.0
            self.ask4.animation    = "fadeIn"
            self.ask4.curve        = "easeIn"
            self.ask4.duration     = 0.4
            self.ask3.animate()
        }
        
        */
        
        
        arrow.opacity      = 0.0
        arrow.animation    = "squeezeRight"
        arrow.curve        = "easeIn"
        arrow.delay        = 0.6
        arrow.duration     = 0.5
        arrow.animate()
        
        delay(delay: 6.2){
            self.view.addGestureRecognizer(self.swipeLeft2)
            self.btnNext.isHidden = false
            self.btnItem2.isHidden = false
            self.btnItem3.isHidden = false
            self.btnItem4.isHidden = false
            self.btnItem5.isHidden = false
            
        }
        
            
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
         if segue.identifier == "play" {
         let nextScene =  segue.destinationViewController as! DaylongSun00ViewController
         // Pass the selected object to the new view controller.
         nextScene.video = "play"
         }
         */
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

