//
//  Producto2Slide5ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto2Slide5ViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    
    @IBOutlet var producto: SpringImageView!
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    @IBOutlet var texto1: SpringImageView!
    
    @IBOutlet var texto2: SpringImageView!
    @IBOutlet var texto3: SpringImageView!
    
    @IBOutlet var texto4: SpringImageView!
 
    @IBOutlet var swipeRight: UISwipeGestureRecognizer!
    
    @IBOutlet var btnItem1: UIButton!
    @IBOutlet var btnItem3: UIButton!
    @IBOutlet var btnItem4: UIButton!
    @IBOutlet var btnItem2: UIButton!
    var pos = CGPoint(x:0.0,y:0.0)
    var tiempo = 0.0
    
    @IBOutlet var img2: SpringImageView!
    
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
        self.btnItem3.isHidden = true
        
        self.view.removeGestureRecognizer(self.swipeRight)
       
        
         producto.opacity      = 0.0
         producto.animation    = "animalPop"
         producto.curve        = "easeIn"
         producto.delay        = 0.1
         producto.duration     = 0.5
         producto.animate()
  
         titulo.opacity      = 0.0
         titulo.animation    = "animalPop"
         titulo.curve        = "easeIn"
         titulo.delay        = 0.4
         titulo.duration     = 0.5
         titulo.animate()
         
         texto.opacity      = 0.0
         texto.animation    = "animalPop"
         texto.curve        = "easeIn"
         texto.delay        = 0.8
         texto.duration     = 0.5
         texto.animate()
        
         texto1.opacity      = 0.0
         texto1.animation    = "animalPop"
         texto1.curve        = "easeIn"
         texto1.delay        = 1.2
         texto1.duration     = 0.5
         texto1.animate()
        
         texto2.opacity      = 0.0
         texto2.animation    = "animalPop"
         texto2.curve        = "easeIn"
         texto2.delay        = 1.6
         texto2.duration     = 0.5
         texto2.animate()
        
         texto3.opacity      = 0.0
         texto3.animation    = "fadeIn"
         texto3.curve        = "easeIn"
         texto3.delay        = 2.0
         texto3.duration     = 0.5
         texto3.animate()
        
         texto4.opacity      = 0.0
         texto4.animation    = "fadeIn"
         texto4.curve        = "easeIn"
         texto4.delay        = 2.2
         texto4.duration     = 0.5
         texto4.animate()

        delay(delay: 3.0){
            
            self.view.addGestureRecognizer(self.swipeRight)
            self.btnItem2.isHidden = false
            self.btnItem1.isHidden = false
            self.btnItem4.isHidden = false
            self.btnItem3.isHidden = false
        }
        
        
    }
    
    func elefante(){
        var puntoFinalX : CGFloat = 0.0, puntoFinalY : CGFloat = 0.0, puntoInicialX : CGFloat = 0.0, puntoInicialY : CGFloat = 0.0, puntoControl1X : CGFloat = 0.0, puntoControl1Y : CGFloat = 0.0, puntoControl2X : CGFloat = 0.0, puntoControl2Y : CGFloat = 0.0
        
        
        puntoInicialX = pos.x + 300
        puntoInicialY = pos.y - 800
        puntoFinalX = pos.x - 1500
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
