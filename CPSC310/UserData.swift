//
//  UserData.swift
//  CPSC310
//
//  Created by Eric Gustin on 4/9/20.
//  Copyright © 2020 Eric Gustin. All rights reserved.
//

import Foundation

class UserData {
 let defaults = UserDefaults.standard
 static var usernames: [String] = []
 static var emails: [String] = []
 static var passwords: [String] = []
 static var genders: [String] = []
 static var dobs: [String] = []
 static var sound = 75.0
 static var music = 75.0
 static var mute = false
 
// init() {
//  usernames = UserDefaults.standard.stringArray(forKey: "usernames")!
//  emails = UserDefaults.standard.stringArray(forKey: "emails")!
//  passwords = UserDefaults.standard.stringArray(forKey: "passwords")!
// }

 public static func setData() {
  usernames = UserDefaults.standard.stringArray(forKey: "usernames") ?? []
  emails = UserDefaults.standard.stringArray(forKey: "emails") ?? []
  passwords = UserDefaults.standard.stringArray(forKey: "passwords") ?? []
 }

 public static func addUsername(username: String?) {
  usernames = UserDefaults.standard.stringArray(forKey: "usernames") ?? []
  username.map { usernames.append($0)}
  UserDefaults.standard.set(usernames, forKey: "usernames")
 }
 
 public static func addEmail(email: String?) {
  emails = UserDefaults.standard.stringArray(forKey: "emails") ?? []
  email.map { emails.append($0)}
  UserDefaults.standard.set(emails, forKey: "emails")
 }
 
 public static func addPassword(password: String?) {
  passwords = UserDefaults.standard.stringArray(forKey: "passwords") ?? []
  password.map { passwords.append($0)}
  UserDefaults.standard.set(passwords, forKey: "passwords")
 }
 
 public static func addDob(dob: String?) {
  dob.map { dobs.append($0)}
 }
 
 public static func addGender(gender: String?) {
  gender.map { genders.append($0)}
 }
 
 // returns the index that the parameter username is at in usernames array
 public static func findUsernameIndex(username: String) -> Int {
  for name in usernames { print("Username: \(name)") }
  return usernames.firstIndex(of: username) ?? -1
 }
 
 public static func findEmailIndex(email: String) -> Int {
  for aemail in usernames { print("Email: " + aemail) }
  return emails.firstIndex(of: email) ?? -1
 }
 
 public static func findPasswordIndex(password: String) -> Int {
  for apassword in usernames { print("Password: " + apassword) }
  return passwords.firstIndex(of: password) ?? -1
 }
 
 public static func findDobIndex(dob: String) -> Int {
  return dobs.firstIndex(of: dob) ?? -1
 }
 
 public static func findGenderAtIndex(index: Int) -> String {
  return genders[index]
 }
 
}
