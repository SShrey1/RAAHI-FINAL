//
//  Gallery.swift
//  CustomTableView
//
//  Created by User@Param on 05/11/24.
//
import Foundation
import UIKit
@IBDesignable class CardVu: UIView{
    @IBInspectable var cornerradius : CGFloat = 20
    @IBInspectable var shadowOffSetWidth : Int = 0
    @IBInspectable var shadowOffSetHeight : Int = 1
    @IBInspectable var shadowopacity : Float = 0.3
    override func layoutSubviews() {
        layer.cornerRadius=cornerradius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerradius)
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: shadowOffSetWidth, height: shadowOffSetHeight);
        layer.shadowOpacity = shadowopacity
        layer.shadowPath = shadowPath.cgPath
    }
    
}

