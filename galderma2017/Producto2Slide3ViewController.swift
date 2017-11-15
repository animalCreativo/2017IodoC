//
//  Producto2Slide3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto2Slide3ViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var burbuja1: SpringImageView!
    @IBOutlet var burbuja2: SpringImageView!
    @IBOutlet var burbuja3: SpringImageView!
    @IBOutlet var burbuja4: SpringImageView!
    @IBOutlet var burbuja5: SpringImageView!
    
    @IBOutlet var burbujaBack1: SpringImageView!
    @IBOutlet var producto: SpringImageView!
    
    @IBOutlet var btnItem1: UIButton!
    @IBOutlet var btnItem2: UIButton!
    @IBOutlet var btnItem4: UIButton!
    @IBOutlet var btnItem5: UIButton!
    
    @IBOutlet var img2: SpringImageView!
    
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
        img2.frame.origin.y = -500
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        elefante()
        
    }
    
    func slide(){
        self.btnItem1.isHidden = true
        self.btnItem2.isHidden = true
        self.btnItem4.isHidden = true
        self.btnItem5.isHidden = true
        
        
        self.view.removeGestureRecognizer(self.swipeLeft)
        self.view.removeGestureRecognizer(self.swipeRight)
        
        titulo.opacity      = 0.0
        titulo.animation    = "slideRight"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        burbuja1.opacity      = 0.0
        burbuja1.animation    = "zoomIn"
        burbuja1.curve        = "easeInOutSine"
        burbuja1.delay        = 0.4
        burbuja1.duration     = 2.5
        burbuja1.damping      = 0.2
        burbuja1.animate()
        
        burbuja2.opacity      = 0.0
        burbuja2.animation    = "zoomIn"
        burbuja2.curve        = "easeInOutSine"
        burbuja2.delay        = 0.8
        burbuja2.duration     = 2.5
        burbuja2.damping      = 0.2
        burbuja2.animate()
        
        burbuja3.opacity      = 0.0
        burbuja3.animation    = "zoomIn"
        burbuja3.curve        = "easeInOutSine"
        burbuja3.delay        = 1.2
        burbuja3.duration     = 2.5
        burbuja3.damping      = 0.2
        burbuja3.animate()
        
        burbuja4.opacity      = 0.0
        burbuja4.animation    = "zoomIn"
        burbuja4.curve        = "easeInOutSine"
        burbuja4.delay        = 1.6
        burbuja4.duration     = 2.5
        burbuja4.damping      = 0.2
        burbuja4.animate()
        
        burbuja5.opacity      = 0.0
        burbuja5.animation    = "zoomIn"
        burbuja5.curve        = "easeInOutSine"
        burbuja5.delay        = 2.0
        burbuja5.duration     = 2.5
        burbuja5.damping      = 0.2
        burbuja5.animate()
        
        producto.opacity      = 0.0
        producto.animation    = "slideRight"
        producto.curve        = "easeIn"
        producto.delay        = 1.6
        producto.duration     = 0.6
        producto.animate()

        
        delay(delay: 2.5){
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            self.btnItem2.isHidden = false
            self.btnItem1.isHidden = false
            self.btnItem4.isHidden = false
            self.btnItem5.isHidden = false
            
        }
        
        
    }
    
    func elefante(){
        var puntoFinalX : CGFloat = 0.0, puntoFinalY : CGFloat = 0.0, puntoInicialX : CGFloat = 0.0, puntoInicialY : CGFloat = 0.0, puntoControl1X : CGFloat = 0.0, puntoControl1Y : CGFloat = 0.0, puntoControl2X : CGFloat = 0.0, puntoControl2Y : CGFloat = 0.0
        
        
        puntoInicialX = pos.x
        puntoInicialY = pos.y - 800
        puntoFinalX = pos.x
        puntoFinalY = pos.y + 1500
        
        puntoControl2X = 600
        puntoControl2Y = 300
        
        puntoControl1X = 800
        puntoControl1Y = 600
        
        tiempo = 3.5
        
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        let anim = CAKeyframeAnimation(keyPath: "position")
        
        anim.path = path.cgPath
        
        anim.rotationMode = nil
        anim.repeatCount = 0.0
        anim.duration = tiempo
        
        img2.layer.add(anim, forKey: "animate position along path")
        
        delay(delay: 3.7){
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
