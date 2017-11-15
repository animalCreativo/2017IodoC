//
//  ProductoSlide4ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 08-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class ProductoSlide4ViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!

    @IBOutlet var producto: SpringImageView!

    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    @IBOutlet var item4: SpringImageView!
    
    @IBOutlet var img1: SpringImageView!
    @IBOutlet var img2: SpringImageView!
    
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn5: UIButton!
    
    
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
        self.btn2.isHidden = true
        self.btn5.isHidden = true
        
        producto.opacity      = 0.0
        producto.animation    = "zoomIn"
        producto.curve        = "easeIn"
        producto.delay        = 0.1
        producto.duration     = 0.5
        producto.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "slideUp"
        item1.curve        = "easeIn"
        item1.delay        = 0.4
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "slideUp"
        item2.curve        = "easeIn"
        item2.delay        = 0.8
        item2.duration     = 0.5
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "slideUp"
        item3.curve        = "easeIn"
        item3.delay        = 1.2
        item3.duration     = 0.5
        item3.animate()
        
        item4.opacity      = 0.0
        item4.animation    = "slideUp"
        item4.curve        = "easeIn"
        item4.delay        = 1.6
        item4.duration     = 0.5
        item4.animate()
        
        img1.opacity      = 0.0
        img1.animation    = "fadeIn"
        img1.curve        = "easeIn"
        img1.delay        = 2.0
        img1.duration     = 0.5
        img1.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "fadeIn"
        img2.curve        = "easeIn"
        img2.delay        = 2.4
        img2.duration     = 0.5
        img2.animate()
        
        
        delay(delay: 3.0){
            self.btn1.isHidden = false
            self.btn3.isHidden = false
            self.btn2.isHidden = false
            self.btn5.isHidden = false
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
