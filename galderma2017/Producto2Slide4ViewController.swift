//
//  Producto2Slide4ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto2Slide4ViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var producto: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!

    @IBOutlet var item3: SpringImageView!
    @IBOutlet var item4: SpringImageView!
    @IBOutlet var item5: SpringImageView!
    @IBOutlet var item6: SpringImageView!
    
    @IBOutlet var itemBack1: SpringImageView!
    
    @IBOutlet var btnItem1: UIButton!
    @IBOutlet var btnItem3: UIButton!
    @IBOutlet var btnItem2: UIButton!
    @IBOutlet var btnItem5: UIButton!
    
    @IBOutlet var img2: SpringImageView!
    
    @IBOutlet var swipeRight: UISwipeGestureRecognizer!
    @IBOutlet var swipeLeft: UISwipeGestureRecognizer!
    
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
        self.btnItem2.isHidden = true
        self.btnItem3.isHidden = true
        self.btnItem5.isHidden = true
        self.view.removeGestureRecognizer(self.swipeRight)
        self.view.removeGestureRecognizer(self.swipeLeft)
     
        titulo.opacity      = 0.0
        titulo.animation    = "slideRight"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        
        producto.opacity      = 0.0
        producto.animation    = "slideLeft"
        producto.curve        = "easeIn"
        producto.delay        = 0.4
        producto.duration     = 0.5
        producto.animate()
        
  
        item1.opacity      = 0.0
        item1.animation    = "swing"
        item1.curve        = "easeInOutSine"
        item1.delay        = 0.8
        item1.duration     = 2.5
        item1.damping      = 0.3
        item1.velocity     = 0.3
        item1.animate()
        
        
        item3.opacity      = 0.0
        item3.animation    = "swing"
        item3.curve        = "easeInOutSine"
        item3.delay        = 1.2
        item3.duration     = 2.5
        item3.damping      = 0.3
        item3.velocity     = 0.3
        item3.animate()
        
        
        item4.opacity      = 0.0
        item4.animation    = "swing"
        item4.curve        = "easeInOutSine"
        item4.delay        = 1.8
        item4.duration     = 2.5
        item4.damping      = 0.3
        item4.velocity     = 0.3
        item4.animate()
        
        item5.opacity      = 0.0
        item5.animation    = "swing"
        item5.curve        = "easeInOutSine"
        item5.delay        = 2.2
        item5.duration     = 2.5
        item5.damping      = 0.3
        item5.velocity     = 0.3
        item5.animate()
        
        item6.opacity      = 0.0
        item6.animation    = "swing"
        item6.curve        = "easeInOutSine"
        item6.delay        = 2.6
        item6.duration     = 2.5
        item6.damping      = 0.3
        item6.velocity     = 0.3
        item6.animate()
        
        
        delay(delay: 3.5){

            self.view.addGestureRecognizer(self.swipeRight)
            self.view.addGestureRecognizer(self.swipeLeft)
            self.btnItem2.isHidden = false
            self.btnItem1.isHidden = false
            self.btnItem3.isHidden = false
            self.btnItem5.isHidden = false
        }
        
        
    }
    
    func elefante(){
        var puntoFinalX : CGFloat = 0.0, puntoFinalY : CGFloat = 0.0, puntoInicialX : CGFloat = 0.0, puntoInicialY : CGFloat = 0.0, puntoControl1X : CGFloat = 0.0, puntoControl1Y : CGFloat = 0.0, puntoControl2X : CGFloat = 0.0, puntoControl2Y : CGFloat = 0.0
        
        
        puntoInicialX = pos.x
        puntoInicialY = pos.y + 800
        puntoFinalX = pos.x - 1000
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
