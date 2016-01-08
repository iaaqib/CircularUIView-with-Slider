//
//  ViewController.swift
//  CircularUIView with Slider
//
//  Created by Aaqib Hussain on 08/01/2016.
//  Copyright © 2016 Aaqib Hussain. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let circleView = UIView()
    var sliderCurrentValue : CGFloat!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        circularView(view.center.x - 30/2, y: view.center.y - 30/2, radius: 30)
    }
    
    
    
    
    @IBAction func sliderAction(sender: UISlider) {
        sliderCurrentValue  = CGFloat(sender.value)
        circularView(view.center.x - sliderCurrentValue/2, y: view.center.y - sliderCurrentValue/2, radius: sliderCurrentValue)
        
    }
    func circularView(x : CGFloat, y : CGFloat , radius : CGFloat ){
        circleView.frame = CGRectMake(x, y , radius, radius)
        self.circleView.layer.borderColor = UIColor(red: 247.0/255, green: 159.0/255, blue: 50.0/255, alpha: 1.0).CGColor
        self.circleView.layer.borderWidth = 3;
        circleView.backgroundColor = UIColor(red: 158.0/255, green: 220.0/255, blue: 247.0/255, alpha: 0.5)
        
        view.addSubview(circleView)
        view.bringSubviewToFront(circleView)
        

        self.circleView.layer.cornerRadius = CGRectGetWidth(self.circleView.frame)/2
        self.circleView.clipsToBounds = true
        circleView.userInteractionEnabled = false;
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

