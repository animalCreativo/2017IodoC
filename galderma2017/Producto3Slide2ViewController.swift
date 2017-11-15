//
//  Producto3Slide2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 08-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto3Slide2ViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    
    @IBOutlet var texto2: SpringImageView!
    
    @IBOutlet var imgBtn1: SpringImageView!
    
    @IBOutlet var imgBtn2: SpringImageView!
    
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!
    @IBOutlet var btn5: UIButton!
    
    @IBOutlet var btnPop1: UIButton!
    @IBOutlet var btnPop2: UIButton!
    
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
        self.btn4.isHidden = true
        self.btn5.isHidden = true
        self.btnPop1.isHidden = true
        self.btnPop2.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "slideDown"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "slideRight"
        texto.curve        = "easeIn"
        texto.delay        = 0.4
        texto.duration     = 0.5
        texto.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "fadeIn"
        item1.curve        = "easeIn"
        item1.delay        = 0.8
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "animalPop"
        item2.curve        = "easeIn"
        item2.delay        = 1.2
        item2.duration     = 0.5
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "fadeIn"
        item3.curve        = "easeIn"
        item3.delay        = 1.6
        item3.duration     = 0.5
        item3.animate()
        
        texto2.opacity      = 0.0
        texto2.animation    = "slideUp"
        texto2.curve        = "easeIn"
        texto2.delay        = 2.0
        texto2.duration     = 0.5
        texto2.animate()
        
        imgBtn1.opacity      = 0.0
        imgBtn1.animation    = "slideRight"
        imgBtn1.curve        = "easeIn"
        imgBtn1.delay        = 2.4
        imgBtn1.duration     = 0.5
        imgBtn1.animate()
        
        imgBtn2.opacity      = 0.0
        imgBtn2.animation    = "slideRight"
        imgBtn2.curve        = "easeIn"
        imgBtn2.delay        = 2.8
        imgBtn2.duration     = 0.5
        imgBtn2.animate()
        
        delay(delay: 3.2){
            self.btn1.isHidden = false
            self.btn3.isHidden = false
            self.btn4.isHidden = false
            self.btn5.isHidden = false
            self.btnPop1.isHidden = false
            self.btnPop2.isHidden = false
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
