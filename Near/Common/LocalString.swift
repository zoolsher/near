//
//  LocalString.swift
//  Near
//
//  Created by zoolsher on 2018/6/9.
//  Copyright © 2018年 zoolsher. All rights reserved.
//

import Foundation

enum I18NTAG:String{
  case NO_NOTIFICATION_ALERT_TITLE
  case NO_NOTIFICATION_ALERT_MESSAGE
  case NO_NOTIFICATION_ALERT_CANCEL
  func value()->String{
    return self.rawValue
  }
}

public func LocalizedString(_ key: String) -> String{
  return NSLocalizedString(key, comment:"")
}
