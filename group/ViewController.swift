import UIKit

class ViewController: UIViewController {
    
    var redView: UIView!
    var blueView: UIView!
    var textOne = UILabel()
    var textTwo = UILabel()
    var labelOne = UILabel()
    var labelTwo = UILabel()
    var labelThree = UILabel()
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        let regularConstraint = [
            
            redView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 16),
            redView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 50),
            
            blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            blueView.topAnchor.constraint(equalTo: redView.bottomAnchor,constant: 16),
            blueView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 50),
            blueView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 16),
            
            
        ]
        
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
        
        redView = UIView()
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = .red
        view.addSubview(redView)
        
        blueView = UIView()
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        
        textOne.text = "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
        textOne.numberOfLines = 0
        textOne.lineBreakMode = .byWordWrapping
        textOne.translatesAutoresizingMaskIntoConstraints = false
        textOne.font = UIFont.boldSystemFont(ofSize: 18)
        redView.addSubview(textOne)
        
        
        textTwo.text = "ooooooooooooooooooooooooooooooooooooooooo"
        textTwo.translatesAutoresizingMaskIntoConstraints = false
        textTwo.font = UIFont.boldSystemFont(ofSize: 18)
        redView.addSubview(textTwo)
        
        labelOne.text = "gggggggggggggggggggggggggggggggggggggggggg"
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        labelOne.font = UIFont.boldSystemFont(ofSize: 18)
        blueView.addSubview(labelOne)
        
        labelTwo.text = "rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr"
        labelTwo.numberOfLines = 0
        labelTwo.lineBreakMode = .byWordWrapping
        labelTwo.translatesAutoresizingMaskIntoConstraints = false
        labelTwo.font = UIFont.boldSystemFont(ofSize: 18)
        blueView.addSubview(labelTwo)
        
        labelThree.text = "hhhhhhhhhhhhhhhhhhhhhh"
        labelThree.translatesAutoresizingMaskIntoConstraints = false
        labelThree.font = UIFont.boldSystemFont(ofSize: 18)
        labelThree.textAlignment = .right
        blueView.addSubview(labelThree)
        
        
        
            NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 16),
            redView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 16),
            redView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -16),
            redView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.5),
            
            
            blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 16),
            blueView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -16),
            blueView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 16),
            blueView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 16),
            blueView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.5, constant: -16),
            
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

