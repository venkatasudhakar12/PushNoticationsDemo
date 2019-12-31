//
//  TimerApplication.swift
//  PushNoticationsDemo
//
//  Created by Sudhakar on 30/12/19.
//  Copyright © 2019 Bayer. All rights reserved.
//

import Foundation
import UIKit

class TimerApplication:UIApplication {
    
    private var timeoutInSeconds:TimeInterval{
        return 1*60
    }
    private var idleTimer:Timer?
    
     func resetIdleTimer(){
        if let idleTimer = idleTimer{
            idleTimer.invalidate()
        }
        idleTimer = Timer.scheduledTimer(timeInterval: timeoutInSeconds, target: self, selector: #selector(timeHasExceded), userInfo: nil, repeats: false)
    }
    @objc private func timeHasExceded(){
        NotificationCenter.default.post(name: NSNotification.Name.timeOut, object: nil)
    }
    override func sendEvent(_ event: UIEvent) {
        super.sendEvent(event)
        if idleTimer != nil {
            self.resetIdleTimer()
        }
        if let touches = event.allTouches {
            for touch in touches where touch.phase == UITouch.Phase.began {
               self.resetIdleTimer()
             }
        }
    }
}
extension Notification.Name{
    static let timeOut = Notification.Name(rawValue: "appTimeout")
}

