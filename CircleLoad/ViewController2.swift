//
//  ViewController2.swift
//  CircleLoad
//
//  Created by Cyberk on 4/10/17.
//  Copyright © 2017 Cyberk. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var timer: Timer!
    var current: CGFloat = 0
    var current1: CGFloat = 0.1
    var currentOpacity: CGFloat = 0.5
    
    @IBOutlet weak var floatingView: FloatingAnimations!
    @IBOutlet weak var MapImageViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var mapImageView: UIImageView!
    @IBOutlet weak var RequestAnimation: AnimationDraw!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapImageView.clipsToBounds = true
        mapImageView.layer.cornerRadius = 235/2
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        timer = Timer.scheduledTimer(timeInterval: 0.001, target: self, selector: #selector(ViewController2.circleloadanimate), userInfo: nil, repeats: true)
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(ViewController2.floatingAnimation), userInfo: nil, repeats: true)
    }
    func circleloadanimate() {
        RequestAnimation.masterSlider = current
        RequestAnimation.setNeedsDisplay()
        current += 0.0005
        print(current)
        if current == 1{
            dismiss(animated: true, completion: { 
                
            })
        }
    }
    func floatingAnimation() {

        if currentOpacity <= 0{
            currentOpacity = 1
            current1 = 0.1
        }
        floatingView.masterSlider = current1
        floatingView.setNeedsDisplay()
        floatingView.setOpacity = currentOpacity
        currentOpacity -= 0.01
        current1 += 0.001
        
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
