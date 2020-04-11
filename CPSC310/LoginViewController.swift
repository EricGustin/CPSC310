//
//  LoginViewController.swift
//  CPSC310
//
//  Created by Eric Gustin on 4/5/20.
//  Copyright © 2020 Eric Gustin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
 @IBOutlet weak var usernameTextField: UITextField!
 @IBOutlet weak var emailTextField: UITextField!
 @IBOutlet weak var passwordTextField: UITextField!
 

 @IBAction func cancelButton(_ sender: Any, forEvent event: UIEvent) {
  goToMenuViewController()
 }
 @IBAction func loginButton(_ sender: Any, forEvent event: UIEvent) {
  UserData.setData()
  let usernameIndex = UserData.findUsernameIndex(username: usernameTextField.text!)
  let emailIndex = UserData.findEmailIndex(email: emailTextField.text!)
  let passwordIndex = UserData.findPasswordIndex(password: passwordTextField.text!)
  if (usernameIndex == emailIndex && emailIndex == passwordIndex && passwordIndex != -1) {
   let defaults = UserDefaults.standard
   defaults.set(usernameTextField.text, forKey: "username")
   defaults.set(emailTextField.text, forKey: "email")
   defaults.set(passwordTextField.text, forKey: "password")
  }
  goToMenuViewController()
 }
 
 override func viewDidLoad() {
  super.viewDidLoad()
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
  performSegue(withIdentifier: "loginToMenuSegue", sender: nil)
 }
}

