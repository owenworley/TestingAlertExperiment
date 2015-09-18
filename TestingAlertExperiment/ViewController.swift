//
//  ViewController.swift
//  TestingAlertExperiment
//
//  Created by Dominik Hauser on 02/09/15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var Action = UIAlertAction.self
  var actionString: String?
  
  @IBAction func showAlert(sender: UIButton) {
    let alertViewController = UIAlertController(title: "Test Title", message: "Message", preferredStyle: .Alert)
    
    let okAction = Action.init(title: "OK", style: .Default) { (action) -> Void in
      self.actionString = "OK"
    }
    
    let cancelAction = Action.init(title: "Cancel", style: .Cancel) { (action) -> Void in
      self.actionString = "Cancel"
    }
    
    alertViewController.addAction(cancelAction)
    alertViewController.addAction(okAction)
    
    presentViewController(alertViewController, animated: true, completion: nil)
  }
}
