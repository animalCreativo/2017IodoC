//
//  ProductoSlide5ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 08-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class ProductoSlide5ViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    @IBOutlet var item4: SpringImageView!
    
    @IBOutlet var item12: SpringImageView!
    @IBOutlet var item22: SpringImageView!
    @IBOutlet var item32: SpringImageView!
    @IBOutlet var item42: SpringImageView!
    
    @IBOutlet var producto: SpringImageView!
    
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!
    @IBOutlet var btn1: UIButton!
    
    
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
        self.btn4.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()

        producto.opacity      = 0.0
        producto.animation    = "zoomIn"
        producto.curve        = "easeIn"
        producto.delay        = 0.4
        producto.duration     = 0.8
        producto.animate()
        

        item1.opacity      = 0.0
        item1.animation    = "fadeIn"
        item1.curve        = "easeIn"
        item1.delay        = 1.0
        item1.duration     = 0.5
        item1.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "fadeIn"
        item3.curve        = "easeIn"
        item3.delay        = 1.3
        item3.duration     = 0.5
        item3.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "fadeIn"
        item2.curve        = "easeIn"
        item2.delay        = 1.6
        item2.duration     = 0.5
        item2.animate()
        
        item4.opacity      = 0.0
        item4.animation    = "fadeIn"
        item4.curve        = "easeIn"
        item4.delay        = 1.9
        item4.duration     = 0.5
        item4.animate()
        
        item12.opacity      = 0.0
        item12.animation    = "animalPop"
        item12.curve        = "easeIn"
        item12.delay        = 1.2
        item12.duration     = 0.5
        item12.animate()
        
        item22.opacity      = 0.0
        item22.animation    = "animalPop"
        item22.curve        = "easeIn"
        item22.delay        = 1.5
        item22.duration     = 0.5
        item22.animate()
        
        item32.opacity      = 0.0
        item32.animation    = "animalPop"
        item32.curve        = "easeIn"
        item32.delay        = 1.8
        item32.duration     = 0.5
        item32.animate()
        
        item42.opacity      = 0.0
        item42.animation    = "animalPop"
        item42.curve        = "easeIn"
        item42.delay        = 2.1
        item42.duration     = 0.5
        item42.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "slideRight"
        texto.curve        = "easeIn"
        texto.delay        = 2.3
        texto.duration     = 0.5
        texto.animate()
        
        delay(delay: 3.0){
            self.btn1.isHidden = false
            self.btn3.isHidden = false
            self.btn2.isHidden = false
            self.btn4.isHidden = false
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
