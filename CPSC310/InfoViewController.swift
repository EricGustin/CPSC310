//
//  InfoViewController.swift
//  CPSC310
//
//  Created by Eric Gustin on 4/5/20.
//  Copyright © 2020 Eric Gustin. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
 
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
 
}
