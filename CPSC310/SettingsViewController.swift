//
//  SettingsViewController.swift
//  CPSC310
//
//  Created by Eric Gustin on 4/5/20.
//  Copyright © 2020 Eric Gustin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
 @IBOutlet weak var usernameLabel: UILabel!
 @IBOutlet weak var emailLabel: UILabel!
 @IBOutlet weak var birthdayLabel: UILabel!
 @IBOutlet weak var genderLabel: UILabel!
 @IBOutlet weak var soundSlider: UISlider!
 @IBOutlet weak var musicSlider: UISlider!
 @IBOutlet weak var muteSwitch: UISwitch!
 
 @IBAction func soundSlider(_ sender: UISlider, forEvent event: UIEvent) {
  if musicSlider.value == 0.0 && soundSlider.value == 0.0 {
    muteSwitch.setOn(true, animated: true)
  } else { muteSwitch.setOn(false, animated: true) }
 }
 
 @IBAction func musicSlider(_ sender: UISlider, forEvent event: UIEvent) {
  if musicSlider.value == 0.0 && soundSlider.value == 0.0 {
   muteSwitch.setOn(true, animated: true)
  } else { muteSwitch.setOn(false, animated: true) }
 }
 
 @IBAction func muteSwitch(_ sender: UISwitch, forEvent event: UIEvent) {
  if muteSwitch.isOn == true {
   soundSlider.setValue(0.0, animated: true)
   musicSlider.setValue(0.0, animated: true)
  } else {
   soundSlider.setValue(0.01, animated: true)
   musicSlider.setValue(0.01, animated: true)
  }
 }
 
 @IBAction func saveButton(_ sender: Any, forEvent event: UIEvent) {
  goToMenuViewController()
 }
 @IBAction func cancelButton(_ sender: Any, forEvent event: UIEvent) {
  goToMenuViewController()
 }
 @IBAction func backButton(_ sender: Any, forEvent event: UIEvent) {
  goToMenuViewController()
 }
 

 
 
 override func viewDidLoad() {
  super.viewDidLoad()
  usernameLabel.text = UserDefaults.standard.string(forKey: "username")
  emailLabel.text = UserDefaults.standard.string(forKey: "email")
  birthdayLabel.text = UserDefaults.standard.string(forKey: "dateOfBirth")
  genderLabel.text = UserDefaults.standard.string(forKey: "gender")
 }
 
 override var shouldAutorotate: Bool {
  return true
 }
 
 override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
  if UIDevice.current.userInterfaceIdiom == .phone {
   return .allButUpsideDown
  } else {
   return .all
  }
 }
 
 override var prefersStatusBarHidden: Bool {
  return true
 }
 
 func goToMenuViewController() {
  performSegue(withIdentifier: "settingsToMenuSegue", sender: nil)
 }
}
