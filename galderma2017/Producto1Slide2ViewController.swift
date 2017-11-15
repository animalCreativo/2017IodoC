//
//  Producto1Slide2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto1Slide2ViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    @IBOutlet var item4: SpringImageView!
    @IBOutlet var item5: SpringImageView!
    @IBOutlet var item6: SpringImageView!
    @IBOutlet var item7: SpringImageView!
    @IBOutlet var item8: SpringImageView!
    
    
    @IBOutlet weak var btn1: UIButton!
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
        self.btn1.isHidden = true
        self.btn3.isHidden = true
        
        item1.opacity      = 0.0
        item1.animation    = "animalPop"
        item1.curve        = "easeIn"
        item1.delay        = 0.1
        item1.duration     = 0.5
        item1.animate()
        
        item6.opacity      = 0.0
        item6.animation    = "slideUp"
        item6.curve        = "easeIn"
        item6.delay        = 0.1
        item6.duration     = 0.5
        item6.animate()
        
        
        item2.opacity      = 0.0
        item2.animation    = "fadeIn"
        item2.curve        = "easeIn"
        item2.delay        = 0.8
        item2.duration     = 0.5
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "animalPop"
        item3.curve        = "easeIn"
        item3.delay        = 1.2
        item3.duration     = 0.5
        item3.animate()
        
        item7.opacity      = 0.0
        item7.animation    = "slideUp"
        item7.curve        = "easeIn"
        item7.delay        = 1.2
        item7.duration     = 0.5
        item7.animate()
        
        item4.opacity      = 0.0
        item4.animation    = "fadeIn"
        item4.curve        = "easeIn"
        item4.delay        = 1.7
        item4.duration     = 0.5
        item4.animate()
        
        item5.opacity      = 0.0
        item5.animation    = "animalPop"
        item5.curve        = "easeIn"
        item5.delay        = 2.2
        item5.duration     = 0.5
        item5.animate()
        
        item8.opacity      = 0.0
        item8.animation    = "slideUp"
        item8.curve        = "easeIn"
        item8.delay        = 2.2
        item8.duration     = 0.5
        item8.animate()
     
        delay(delay: 2.7){
            self.btn1.isHidden = false
            self.btn3.isHidden = false
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
