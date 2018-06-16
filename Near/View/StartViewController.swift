//
//  ViewController.swift
//  Near
//
//  Created by zoolsher on 2018/6/9.
//  Copyright © 2018年 zoolsher. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.white
    NearNotification.sharedInstance
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

