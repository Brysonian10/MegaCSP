//
//  AlgorithmViewController.swift
//  Bryson-Algorithm
//
//  Created by Spaulding, Bryson on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{

    @IBOutlet weak var algorithmText: UILabel!
    
    @IBOutlet weak var swiftImage: UIImageView!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        
        formatAlgorithm()
    }
    
    private func formatAlgorithm() -> Void
    {
        let title : String = "How to make a project in Xcode."
        
        let stepOne : String = "Open XCode"
        let stepTwo : String = "Click on New Project"
        let stepThree : String = "Select the platform you want your app on"
        let stepFour : String = "Organize the folders as needed to better help you understand where things are while staying neat and clear."
        let stepFive : String = "Go to the “main storyboard” to change the UI of the app and use the right click on the mouse to drag and drop nodes together to connect certain elements to code."
        let stepSix : String = "Open the “view controller:” to start coding your app."
        

        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for step in algorithm
        {
        
        let bullet : String = "🐐"
        let formattedStep : String = "\n\(bullet) \(step)"
        let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
        let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
        
        fullAttributedString.append(attributedStringStep)
            
        }
        
        algorithmText.attributedText = fullAttributedString
        
    }
    
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }
    
}

