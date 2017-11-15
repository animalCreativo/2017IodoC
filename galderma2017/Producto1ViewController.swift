//
//  Producto1ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-02-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto1ViewController: UIViewController {


    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    
    @IBOutlet var imagen1: SpringImageView!
    @IBOutlet var imagen2: SpringImageView!
    @IBOutlet var imagen3: SpringImageView!
    @IBOutlet var imagen4: SpringImageView!
    @IBOutlet var imagen5: SpringImageView!
    
    @IBOutlet var btn1Img: SpringImageView!
    @IBOutlet var btn2Img: SpringImageView!
    @IBOutlet var btn3Img: SpringImageView!
    
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
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
        
        self.btn2.isHidden = true
        self.btn3.isHidden = true
        
        imagen1.opacity      = 0.0
        imagen1.animation    = "zoomIn"
        imagen1.curve        = "easeIn"
        imagen1.delay        = 0.1
        imagen1.duration     = 0.7
        imagen1.animate()
        
        imagen2.opacity      = 0.0
        imagen2.animation    = "zoomIn"
        imagen2.curve        = "easeIn"
        imagen2.delay        = 0.8
        imagen2.duration     = 0.7
        imagen2.animate()
        
        imagen3.opacity      = 0.0
        imagen3.animation    = "zoomIn"
        imagen3.curve        = "easeIn"
        imagen3.delay        = 1.6
        imagen3.duration     = 0.7
        imagen3.animate()
        
        imagen4.opacity      = 0.0
        imagen4.animation    = "fadeIn"
        imagen4.curve        = "easeIn"
        imagen4.delay        = 1.8
        imagen4.duration     = 0.5
        imagen4.animate()
        
        imagen5.opacity      = 0.0
        imagen5.animation    = "animalPop"
        imagen5.curve        = "easeIn"
        imagen5.delay        = 2.0
        imagen5.duration     = 0.7
        imagen5.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "animalPop"
        item1.curve        = "easeIn"
        item1.delay        = 3.2
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "animalPop"
        item2.curve        = "easeIn"
        item2.delay        = 3.4
        item2.duration     = 0.5
        item2.animate()
        
        delay(delay: 4.0){
            self.btn2.isHidden = false
            self.btn3.isHidden = false
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

