//
//  SignUpViewController.swift
//  CPSC310
//
//  Created by Eric Gustin on 4/5/20.
//  Copyright © 2020 Eric Gustin. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
 @IBOutlet weak var usernameTextField: UITextField!
 @IBOutlet weak var emailTextField: UITextField!
 @IBOutlet weak var passwordTextField: UITextField!
 @IBOutlet weak var gender: UISegmentedControl!
 @IBOutlet weak var dateOfBirthDatePicker: UIDatePicker!
 @IBAction func cancelButton(_ sender: UIButton, forEvent event: UIEvent) {
  goToMenuViewController()
 }
 @IBAction func signUpButton(_ sender: UIButton, forEvent event: UIEvent) {
  signUp()
 }
 @IBAction func goToLoginButton(_ sender: UIButton, forEvent event: UIEvent) {
  goToLoginViewController()
 }
 @IBAction func backButton(_ sender: Any, forEvent event: UIEvent) {
  goToMenuViewController()
 }
 @IBAction func settingsButton(_ sender: Any, forEvent event: UIEvent) {
 }
 
 
// func showAlert(title: String, message: String) {
//  let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//  alert.addAction(UIAlertAction(title: "Alert", style: .default) { action in print("alert shown")})
// }
 
// func handleSignUpButton(username: String, password: String) {
//  print("username: \(username)   password: \(password)")
// }

 
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
 
 func signUp() {
  UserData.setData()
  let defaults = UserDefaults.standard
  defaults.set(usernameTextField.text, forKey: "username")
  UserData.addUsername(username: usernameTextField.text)
  defaults.set(UserData.usernames, forKey: "usernames")
  defaults.set(emailTextField.text, forKey: "email")
  UserData.addEmail(email: emailTextField.text)
  defaults.set(UserData.emails, forKey: "emails")
  defaults.set(passwordTextField.text, forKey: "password")
  UserData.addPassword(password: passwordTextField.text)
  defaults.set(UserData.passwords, forKey: "passwords")
  defaults.set(gender.titleForSegment(at: gender.selectedSegmentIndex), forKey: "gender")
  UserData.addGender(gender: gender.titleForSegment(at: gender.selectedSegmentIndex))
  let dateFormatter = DateFormatter() // Source: thinklinux on Stackoverflow
  dateFormatter.dateFormat = "MMMM dd, yyyy"
  defaults.set(dateFormatter.string(from: dateOfBirthDatePicker.date), forKey: "dateOfBirth")
  UserData.addDob(dob: dateFormatter.string(from: dateOfBirthDatePicker.date))
  goToMenuViewController()
 }
 
 func goToLoginViewController() {
  performSegue(withIdentifier: "signUpToLoginSegue", sender: nil)
  //self.dismiss(animated: true, completion: nil)
  // TODO: Close the SignUpViewController once the LoginViewController is created
 }
 
 func goToMenuViewController() {
  performSegue(withIdentifier: "signUpToMenuSegue", sender: nil)
 }
 
 func goToSettingsViewController() {
  performSegue(withIdentifier: "signUpToSettingsSegue", sender: nil)
 }
}
