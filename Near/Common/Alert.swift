//
//  Alert.swift
//  Near
//
//  Created by zoolsher on 2018/6/9.
//  Copyright © 2018年 zoolsher. All rights reserved.
//

import Foundation
import UIKit

public func Alert(title:String, message:String, button:String) {
  let alertController = UIAlertController(
    title: title,
    message: message,
    preferredStyle: UIAlertControllerStyle.alert)
  
  let cancelAction = UIAlertAction(
    title: button,
    style: UIAlertActionStyle.cancel,
    handler: { (action) in
      alertController.dismiss(animated: true, completion: nil)
  });
  
  alertController.addAction(cancelAction)
  
  UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true, completion: nil)
}


