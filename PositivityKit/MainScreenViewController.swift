//
//  ViewController.swift
//  PositivityKit
//
//  Created by Josiah Mory on 5/16/17.
//  Copyright © 2017 kickinbahk Productions. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {

  let selfieButton = UIButton()
  let dailyActivityButton = UIButton()
  var backgroundImage = UIImageView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    updateUI()
  }

  func  updateUI() {
    let image = UIImage(named: "background-image")
    backgroundImage = UIImageView(image: image)
    
    selfieButton.backgroundColor = UIColor.yellow
    selfieButton.setTitle("Take a Selfie", for: .normal)
    
    dailyActivityButton.backgroundColor = UIColor.yellow
    dailyActivityButton.setTitle("Daily Activity", for: .normal)
    
    view.addSubview(backgroundImage)
    
    addConstriants()
  }
  
  func addConstriants() {
    backgroundImage.translatesAutoresizingMaskIntoConstraints = false
    backgroundImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    backgroundImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
    backgroundImage.contentMode = .scaleAspectFill
  }

}

