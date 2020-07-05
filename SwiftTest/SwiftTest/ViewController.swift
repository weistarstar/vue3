//
//  ViewController.swift
//  SwiftTest
//
//  Created by Sun on 2020/3/30.
//  Copyright © 2020 letao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageView : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.red
        
        guard let actualPaht = Bundle.main.path(forResource: "test", ofType: "png") else {
            return
        }
        guard let actualImage = UIImage.init(contentsOfFile: actualPaht) else {
            return
        }
        
        let ima = UIImageView(image: actualImage)
        ima.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        ima.center = view.center
//        view.addSubview(ima)
        
        imageView = UIImageView(image: actualImage)
        imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        imageView.center = view.center
        imageView.isUserInteractionEnabled = true
        view.addSubview(imageView)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(scale2))
        imageView.addGestureRecognizer(tap)
        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        self.translate()
//        self.scale()
//        self.rotation()
//        self.concat()
        self.invert()
    }


//    func print("swefe")
}

extension ViewController {
    //  平移
    func translate() {
        let tran = CATransform3DMakeTranslation(50, 60, 60)
        
        UIView.animate(withDuration: 2) {
            self.imageView.layer.transform = tran
        }
    }
    
    func scale() {
        let scale = CATransform3DMakeScale(-0.5, -0.5, 1)
        UIView.animate(withDuration: 2) {
            self.imageView.layer.transform = scale
        }
    }
    
    @objc func scale2() {
        let scale2 = CATransform3DMakeScale(1, 1, 1)
        UIView.animate(withDuration: 2) {
            self.imageView.layer.transform = scale2
        }
        
    }
    
    func rotation() {
        let rotation = CATransform3DMakeRotation(CGFloat(Double.pi / 4), 0.5, 0.5, 0)
        UIView.animate(withDuration: 2) {
            self.imageView.layer.transform = rotation
        }
    }
    
    @objc func rotaion2() {
        let rotation2 = CATransform3DMakeRotation(CGFloat(Double.pi / 4), 0.5, 0, 0)
        UIView.animate(withDuration: 2) {
            self.imageView.layer.transform = rotation2
        }
    }
    
    // 叠加
    func concat() {
        
        let transformTranslation = CATransform3DMakeTranslation(200, 200, 0)
        let transformSclae = CATransform3DMakeScale(0.5, -0.5, 1)
        let transformConcat = CATransform3DConcat(transformTranslation, transformSclae)
        
        UIView.animate(withDuration: 1) {
            self.imageView.layer.transform = transformConcat
        }
    }
    
    // 反转
    func invert() {
        
        let transformSclae = CATransform3DMakeScale(0.5, -0.5, 1)
        let transformInvert = CATransform3DInvert(transformSclae)
        
        UIView.animate(withDuration: 1) {
            self.imageView.layer.transform = transformInvert
        }
    }
}

