//
//  NearNotification.swift
//  Near
//
//  Created by zoolsher on 2018/6/9.
//  Copyright © 2018年 zoolsher. All rights reserved.
//

import Foundation
import UIKit
import UserNotifications

class NearNotification: NSObject, UNUserNotificationCenterDelegate {
  /** 单例 */
  static let sharedInstance = NearNotification()
  var canSend:Bool = false;
  /** init 方法 注册通知 */
  override init() {
    super.init()
    
    let userNotificationCenter = UNUserNotificationCenter.current()
    userNotificationCenter.delegate = self
    /** 通知权限申请 */
    userNotificationCenter.requestAuthorization(options: .alert) { (result, err) in
      
    }
    /** 通知关闭的话，弹个窗 */
    userNotificationCenter.getNotificationSettings { (settings) in
      let alertSetting = settings.alertSetting
      self.canSend = (alertSetting != UNNotificationSetting.enabled)
      if(!self.canSend){
        Alert(
          title: LocalizedString(I18NTAG.NO_NOTIFICATION_ALERT_TITLE.value()),
          message: LocalizedString(I18NTAG.NO_NOTIFICATION_ALERT_MESSAGE.value()),
          button: LocalizedString(I18NTAG.NO_NOTIFICATION_ALERT_CANCEL.value())
        )
      }
    }
  }
  func create(content: UNNotificationContent)->String{
    let uid = UUID()
    let date: DateComponents = DateComponents()
    return "";
  }
}
