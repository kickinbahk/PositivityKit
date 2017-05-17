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
  let buttonsContainer = UIView()
  
  var backgroundImage = UIImageView()
  
  override var preferredStatusBarStyle: UIStatusBarStyle {
    return .lightContent
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    updateUI()
  }

  func  updateUI() {
    // Add any necessary properties to the UI elements
    let image = UIImage(named: "background-image")
    backgroundImage = UIImageView(image: image)
    
    selfieButton.backgroundColor = UIColor.yellow
    selfieButton.setTitle("Take a Selfie", for: .normal)
    selfieButton.setTitleColor(UIColor.black, for: .normal)
    
    dailyActivityButton.backgroundColor = UIColor.yellow
    dailyActivityButton.setTitle("Daily Activity", for: .normal)
    dailyActivityButton.setTitleColor(UIColor.black, for: .normal)
    
    view.addSubview(backgroundImage)
    view.addSubview(buttonsContainer)
    // Use a container to keep the buttons together in the layout
    buttonsContainer.addSubview(selfieButton)
    buttonsContainer.addSubview(dailyActivityButton)
    
    addConstriants()
  }
  
  func addConstriants() {
    // layout the elements in the view
    backgroundImage.translatesAutoresizingMaskIntoConstraints = false
    backgroundImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    backgroundImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
    backgroundImage.contentMode = .scaleAspectFill // Center image, fill space, and crop any excess areas
    
    buttonsContainer.translatesAutoresizingMaskIntoConstraints = false
    buttonsContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    buttonsContainer.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    buttonsContainer.heightAnchor.constraint(equalToConstant: view.bounds.height / 3).isActive = true
    buttonsContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
    buttonsContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    
    selfieButton.translatesAutoresizingMaskIntoConstraints = false
    selfieButton.widthAnchor.constraint(equalToConstant: (view.bounds.width / 2) - 30).isActive = true
    selfieButton.leadingAnchor.constraint(equalTo: buttonsContainer.leadingAnchor,
                                          constant: 20).isActive = true
    selfieButton.topAnchor.constraint(equalTo: buttonsContainer.topAnchor,
                                      constant: 20).isActive = true
    selfieButton.bottomAnchor.constraint(equalTo: buttonsContainer.bottomAnchor,
                                         constant: -20).isActive = true
    
    dailyActivityButton.translatesAutoresizingMaskIntoConstraints = false
    dailyActivityButton.widthAnchor.constraint(equalToConstant: (view.bounds.width / 2) - 30).isActive = true
    dailyActivityButton.trailingAnchor.constraint(equalTo: buttonsContainer.trailingAnchor,
                                           constant: -20).isActive = true
    dailyActivityButton.topAnchor.constraint(equalTo: buttonsContainer.topAnchor,
                                             constant: 20).isActive = true
    dailyActivityButton.bottomAnchor.constraint(equalTo: buttonsContainer.bottomAnchor,
                                                constant: -20).isActive = true
    
  }

}

