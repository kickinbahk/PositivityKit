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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  func  updateUI() {
    selfieButton.backgroundColor = UIColor.yellow
    selfieButton.setTitle("Take a Selfie", for: .normal)
    
    dailyActivityButton.backgroundColor = UIColor.yellow
    dailyActivityButton.setTitle("Daily Activity", for: .normal)
  }
  

}

