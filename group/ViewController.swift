// ViewController.swift
// group
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
    
    lazy var firstLabel: UILabel = {
        let firstLabel = UILabel()
        firstLabel.text = "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
        firstLabel.numberOfLines = 0
        firstLabel.lineBreakMode = .byWordWrapping
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        firstLabel.font = UIFont.boldSystemFont(ofSize: 18)
        firstLabel.setContentCompressionResistancePriority(.init(rawValue: 400),for: .vertical)
        return firstLabel
    }()
    
    lazy var secondLabel: UILabel = {
        let secondLabel = UILabel()
        secondLabel.text = "ooooooooooooooooooooooooooooooooooooooooo"
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        secondLabel.font = UIFont.boldSystemFont(ofSize: 18)
        secondLabel.setContentHuggingPriority(.init(rawValue: 1000),for: .vertical)
        return secondLabel
    }()
    
    lazy var upperLabel: UILabel = {
        let upperLabel = UILabel()
        upperLabel.text = "ggggggggggggggggggggggggg"
        upperLabel.translatesAutoresizingMaskIntoConstraints = false
        upperLabel.font = UIFont.boldSystemFont(ofSize: 18)
        return upperLabel
    }()
    
    lazy var averageLabel: UILabel = {
        let averageLabel = UILabel()
        averageLabel.text = "rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr"
        averageLabel.numberOfLines = 0
        averageLabel.lineBreakMode = .byWordWrapping
        averageLabel.translatesAutoresizingMaskIntoConstraints = false
        averageLabel.font = UIFont.boldSystemFont(ofSize: 18)
        return averageLabel
    }()
    
    lazy var lowerLabel: UILabel = {
        let lowerLabel = UILabel()
        lowerLabel.text = "hhhhhhhhhhhhhhhhhhhhhh"
        lowerLabel.translatesAutoresizingMaskIntoConstraints = false
        lowerLabel.font = UIFont.boldSystemFont(ofSize: 18)
        return lowerLabel
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [upperLabel, averageLabel, lowerLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var regularConstraint: [NSLayoutConstraint] = {
        
        return [
            redView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 16),
            redView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 50),
            
            blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            blueView.topAnchor.constraint(equalTo: redView.bottomAnchor,constant: 16),
            blueView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 50),
            blueView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 16),
        ]
    }()
    
    lazy var compactConstraints: [NSLayoutConstraint] = {
        
        return [
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
    }()
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        if traitCollection.horizontalSizeClass == .compact {
            NSLayoutConstraint.deactivate(regularConstraint)
            NSLayoutConstraint.activate(compactConstraints)
           }
        else if traitCollection.horizontalSizeClass == .regular {
            NSLayoutConstraint.deactivate(compactConstraints)
            NSLayoutConstraint.activate(regularConstraint)
        }
   }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    
        view.addSubview(redView)
        view.addSubview(blueView)
        redView.addSubview(firstLabel)
        redView.addSubview(secondLabel)
        blueView.addSubview(stackView)
        
            NSLayoutConstraint.activate(compactConstraints)
        
            NSLayoutConstraint.activate([
           
            firstLabel.topAnchor.constraint(equalTo: redView.layoutMarginsGuide.topAnchor, constant: 16),
            firstLabel.leadingAnchor.constraint(equalTo: redView.layoutMarginsGuide.leadingAnchor, constant: 16),
            firstLabel.trailingAnchor.constraint(equalTo: redView.layoutMarginsGuide.trailingAnchor, constant: -16),
            firstLabel.bottomAnchor.constraint(equalTo: secondLabel.layoutMarginsGuide.topAnchor, constant: -16),
          
            secondLabel.topAnchor.constraint(equalTo: firstLabel.layoutMarginsGuide.bottomAnchor, constant: 16),
            secondLabel.leadingAnchor.constraint(equalTo: redView.layoutMarginsGuide.leadingAnchor, constant: 16),
            secondLabel.trailingAnchor.constraint(equalTo: redView.layoutMarginsGuide.trailingAnchor, constant: -16),
            secondLabel.bottomAnchor.constraint(equalTo: redView.layoutMarginsGuide.bottomAnchor, constant: -16),
            
            stackView.topAnchor.constraint(equalTo: blueView.layoutMarginsGuide.topAnchor, constant: 16),
            stackView.leadingAnchor.constraint(equalTo: blueView.layoutMarginsGuide.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: blueView.layoutMarginsGuide.trailingAnchor, constant: -16),
            stackView.bottomAnchor.constraint(equalTo: blueView.layoutMarginsGuide.bottomAnchor, constant: -16),
            ])
    }
}
