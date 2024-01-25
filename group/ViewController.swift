//
//  ViewController.swift
//  group
//
//  Created by Андрей on 24.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var redView: UIView = {
        let redView = UIView()
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = .red
        return redView
    }()
    lazy var blueView: UIView = {
        let blueView = UIView()
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blueView.backgroundColor = .blue
        return blueView
    }()
    lazy var textOne: UILabel = {
        let textOne = UILabel()
        textOne.text = "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
        textOne.numberOfLines = 0
        textOne.lineBreakMode = .byWordWrapping
        textOne.translatesAutoresizingMaskIntoConstraints = false
        textOne.font = UIFont.boldSystemFont(ofSize: 18)
        return textOne
    }()
    lazy var textTwo: UILabel = {
        let textTwo = UILabel()
        textTwo.text = "ooooooooooooooooooooooooooooooooooooooooo"
        textTwo.translatesAutoresizingMaskIntoConstraints = false
        textTwo.font = UIFont.boldSystemFont(ofSize: 18)
        return textTwo
    }()
    lazy var labelOne: UILabel = {
        let labelOne = UILabel()
        labelOne.text = "gggggggggggggggggggggggggggggggggggggggggg"
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        labelOne.font = UIFont.boldSystemFont(ofSize: 18)
        return labelOne
    }()
    lazy var labelTwo: UILabel = {
        let labelTwo = UILabel()
        labelTwo.text = "rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr"
        labelTwo.numberOfLines = 0
        labelTwo.lineBreakMode = .byWordWrapping
        labelTwo.translatesAutoresizingMaskIntoConstraints = false
        labelTwo.font = UIFont.boldSystemFont(ofSize: 18)
        return labelTwo
    }()
    lazy var labelThree: UILabel = {
        let labelThree = UILabel()
        labelThree.text = "hhhhhhhhhhhhhhhhhhhhhh"
        labelThree.translatesAutoresizingMaskIntoConstraints = false
        labelThree.font = UIFont.boldSystemFont(ofSize: 18)
        labelThree.textAlignment = .right
        return labelThree
    }()
    
    lazy var regularConstraint: Array = {
        
        let regularConstraint = [
            
            redView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 16),
            redView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 50),
            
            blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            blueView.topAnchor.constraint(equalTo: redView.bottomAnchor,constant: 16),
            blueView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 50),
            blueView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 16),
        ]
        
        return regularConstraint
    }()
    
    lazy var compactConstraints: Array = {
        
        let compactConstraints = [

            redView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 16),
            redView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 16),
            redView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -16),
            redView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.5),
            
            
            blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 16),
            blueView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -16),
            blueView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 16),
            blueView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 16),
            blueView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.5, constant: -16),
        ]
        
        return compactConstraints
    }()
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        if traitCollection.horizontalSizeClass == .compact {
            NSLayoutConstraint.deactivate(regularConstraint)
            
            NSLayoutConstraint.activate(compactConstraints)
           
        } else if traitCollection.horizontalSizeClass == .regular {
            
            NSLayoutConstraint.deactivate(compactConstraints)
            
            NSLayoutConstraint.activate(regularConstraint)
           
        }
    
   }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    
        view.addSubview(redView)
        view.addSubview(blueView)
        redView.addSubview(textOne)
        redView.addSubview(textTwo)
        blueView.addSubview(labelOne)
        blueView.addSubview(labelTwo)
        blueView.addSubview(labelThree)
        
        
        NSLayoutConstraint.activate(compactConstraints)
        
            NSLayoutConstraint.activate([
           

            textOne.topAnchor.constraint(equalTo: redView.layoutMarginsGuide.topAnchor, constant: 16),
            textOne.leadingAnchor.constraint(equalTo: redView.layoutMarginsGuide.leadingAnchor, constant: 16),
            textOne.trailingAnchor.constraint(equalTo: redView.layoutMarginsGuide.trailingAnchor, constant: -16),
            textOne.bottomAnchor.constraint(equalTo: textTwo.layoutMarginsGuide.topAnchor, constant: -16),
          
            textTwo.topAnchor.constraint(equalTo: textOne.layoutMarginsGuide.bottomAnchor, constant: 1),
            textTwo.leadingAnchor.constraint(equalTo: redView.layoutMarginsGuide.leadingAnchor, constant: 16),
            textTwo.trailingAnchor.constraint(equalTo: redView.layoutMarginsGuide.trailingAnchor, constant: -16),
            textTwo.bottomAnchor.constraint(equalTo: redView.layoutMarginsGuide.bottomAnchor, constant: -16),
            
            labelOne.topAnchor.constraint(equalTo: blueView.layoutMarginsGuide.topAnchor, constant: 16),
            labelOne.leadingAnchor.constraint(equalTo: blueView.layoutMarginsGuide.leadingAnchor, constant: 16),
            labelOne.trailingAnchor.constraint(equalTo: blueView.layoutMarginsGuide.trailingAnchor, constant: -16),
            labelOne.bottomAnchor.constraint(equalTo: labelTwo.layoutMarginsGuide.topAnchor, constant: -16),
            
            labelTwo.topAnchor.constraint(equalTo: labelOne.layoutMarginsGuide.bottomAnchor, constant: 16),
            labelTwo.leadingAnchor.constraint(equalTo: blueView.layoutMarginsGuide.leadingAnchor, constant: 16),
            labelTwo.trailingAnchor.constraint(equalTo: blueView.layoutMarginsGuide.trailingAnchor, constant: -16),
            labelTwo.bottomAnchor.constraint(equalTo: labelThree.layoutMarginsGuide.topAnchor, constant: -16),
            
            labelThree.topAnchor.constraint(equalTo: labelTwo.layoutMarginsGuide.bottomAnchor, constant: 16),
            labelThree.leadingAnchor.constraint(equalTo: blueView.layoutMarginsGuide.leadingAnchor, constant: 16),
            labelThree.trailingAnchor.constraint(equalTo: blueView.layoutMarginsGuide.trailingAnchor, constant: -16),
            labelThree.bottomAnchor.constraint(equalTo: blueView.layoutMarginsGuide.bottomAnchor, constant: -16),
            
            
            ])
        
      textOne.setContentCompressionResistancePriority(.init(rawValue: 400), for: .vertical)
      textTwo.setContentHuggingPriority(.init(rawValue: 1000), for: .vertical)
      labelTwo.setContentCompressionResistancePriority(.init(rawValue: 400), for: .vertical)
      labelThree.setContentHuggingPriority(.init(rawValue: 1000), for: .vertical)
        
    
        
    }
    
}
