//
//  Producto2Slide2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto2Slide2ViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    
    @IBOutlet var productoA: SpringImageView!
    @IBOutlet var productoB: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    
    @IBOutlet var item21: SpringImageView!
    @IBOutlet var item22: SpringImageView!
    @IBOutlet var item23: SpringImageView!
    @IBOutlet var item24: SpringImageView!
    @IBOutlet var item25: SpringImageView!
    @IBOutlet var item26: SpringImageView!
    
    @IBOutlet var img1: SpringImageView!
    @IBOutlet var img2: SpringImageView!
  
    
    @IBOutlet var btnItem1: UIButton!
    @IBOutlet var btnItem3: UIButton!
    @IBOutlet var btnItem4: UIButton!
    @IBOutlet var btnItem5: UIButton!
    
    
    @IBOutlet var swipeLeft: UISwipeGestureRecognizer!
    @IBOutlet var swipeRight: UISwipeGestureRecognizer!
    
    var pos = CGPoint(x:0.0,y:0.0)
    var tiempo = 0.0
    
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
        
        
        pos = img2.frame.origin
        img2.frame.origin.y = 1200
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        elefante()
    }
    
    func slide(){
        self.btnItem1.isHidden = true
        self.btnItem3.isHidden = true
        self.btnItem4.isHidden = true
        self.btnItem5.isHidden = true
        
        self.view.removeGestureRecognizer(self.swipeLeft)
        self.view.removeGestureRecognizer(self.swipeRight)
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "fadeIn"
        texto.curve        = "easeIn"
        texto.delay        = 0.4
        texto.duration     = 0.5
        texto.animate()
        
        productoA.opacity      = 0.0
        productoA.animation    = "zoomIn"
        productoA.curve        = "easeIn"
        productoA.delay        = 0.8
        productoA.duration     = 0.8
        productoA.animate()
        
        productoB.opacity      = 0.0
        productoB.animation    = "zoomIn"
        productoB.curve        = "easeIn"
        productoB.delay        = 0.8
        productoB.duration     = 0.8
        productoB.animate()
        
        /*
        img1.opacity      = 0.0
        img1.animation    = "animalPop"
        img1.curve        = "easeIn"
        img1.delay        = 0.4
        img1.duration     = 0.5
        img1.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "animalPop"
        img2.curve        = "easeIn"
        img2.delay        = 0.4
        img2.duration     = 0.5
        img2.animate()
        */
        
        item1.opacity      = 0.0
        item1.animation    = "animalPop"
        item1.curve        = "easeIn"
        item1.delay        = 1.2
        item1.duration     = 0.5
        item1.animate()
        
        
        item2.opacity      = 0.0
        item2.animation    = "fadeIn"
        item2.curve        = "easeIn"
        item2.delay        = 1.6
        item2.duration     = 0.5
        item2.animate()
        

        item21.opacity      = 0.0
        item21.animation    = "slideUp"
        item21.curve        = "easeIn"
        item21.delay        = 2.0
        item21.duration     = 0.5
        item21.animate()
        
        item22.opacity      = 0.0
        item22.animation    = "slideUp"
        item22.curve        = "easeIn"
        item22.delay        = 2.4
        item22.duration     = 0.5
        item22.animate()
        
        
        item23.opacity      = 0.0
        item23.animation    = "slideUp"
        item23.curve        = "easeIn"
        item23.delay        = 2.8
        item23.duration     = 0.5
        item23.animate()
        
        item24.opacity      = 0.0
        item24.animation    = "slideUp"
        item24.curve        = "easeIn"
        item24.delay        = 3.2
        item24.duration     = 0.5
        item24.animate()
        
        item25.opacity      = 0.0
        item25.animation    = "slideUp"
        item25.curve        = "easeIn"
        item25.delay        = 3.6
        item25.duration     = 0.5
        item25.animate()
        
        item26.opacity      = 0.0
        item26.animation    = "slideUp"
        item26.curve        = "easeIn"
        item26.delay        = 4.0
        item26.duration     = 0.5
        item26.animate()
        
        delay(delay: 4.5){
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            
            self.btnItem1.isHidden = false
            self.btnItem3.isHidden = false
            self.btnItem4.isHidden = false
            self.btnItem5.isHidden = false
            
        }
        
        
    }

    func elefante(){
        var puntoFinalX : CGFloat = 0.0, puntoFinalY : CGFloat = 0.0, puntoInicialX : CGFloat = 0.0, puntoInicialY : CGFloat = 0.0, puntoControl1X : CGFloat = 0.0, puntoControl1Y : CGFloat = 0.0, puntoControl2X : CGFloat = 0.0, puntoControl2Y : CGFloat = 0.0
        
        
        puntoInicialX = pos.x
        puntoInicialY = pos.y + 800
        puntoFinalX = pos.x
        puntoFinalY = pos.y - 500
        
        puntoControl1X = 600
        puntoControl1Y = 300
        
        puntoControl2X = 800
        puntoControl2Y = 600
        
        tiempo = 2.5
        
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        let anim = CAKeyframeAnimation(keyPath: "position")
        
        anim.path = path.cgPath
        
        anim.rotationMode = nil
        anim.repeatCount = 0.0
        anim.duration = tiempo
        
        img2.layer.add(anim, forKey: "animate position along path")
        
        delay(delay: 2.7){
            self.img2.isHidden = true
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
