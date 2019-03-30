//
//  IcuDateHelper.swift
//  ICU996
//
//  Created by Harry Twan on 2019/3/29.
//  Copyright © 2019 Harry Duan. All rights reserved.
//

import UIKit



class IcuDateHelper: NSObject {
    
    public static let shared = IcuDateHelper()

    override init() {
        super.init()
    }
    
    
    /// 返回月份和日期数据
    ///
    /// - Returns: (Mounth, Day): (Int, Int)
    public func getDate() -> (Int, Int) {
        let date = Date()
        let mounthFormat = DateFormatter()
        mounthFormat.dateFormat = "MM"
        let dayFormat = DateFormatter()
        dayFormat.dateFormat = "dd"
        let formattedMounthDate = mounthFormat.string(from: date)
        let formattedDayDate = dayFormat.string(from: date)
        return (Int(formattedMounthDate) ?? 0, Int(formattedDayDate) ?? 0)
    }
    
    
    /// 返回星期几
    ///
    /// - Returns: (Weekday): (Int)
    public func getWeekDay() -> Int {
        let date = Date()
        let weekday = Calendar.current.component(.weekday, from: date)
        return weekday
    }
    
    
    /// 返回小时和分钟
    ///
    /// - Returns: (Hour, Minute): (Int, Int)
    public func getHourAndMinute() -> (Int, Int) {
        let date = Date()
        let hourFormat = DateFormatter()
        hourFormat.dateFormat = "HH"
        let minuteFormat = DateFormatter()
        minuteFormat.dateFormat = "mm"
        let formattedHourDate = hourFormat.string(from: date)
        let formattedMinuteDate = minuteFormat.string(from: date)
        return (Int(formattedHourDate) ?? 0, Int(formattedMinuteDate) ?? 0)
    }
}
