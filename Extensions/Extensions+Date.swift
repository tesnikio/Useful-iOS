//
//  Extensions+Date.swift
//  WeatherApp
//
//  Created by Nikita Teslyuk on 30/12/2018.
//  Copyright © 2018 Nikita Teslyuk. All rights reserved.
//

import Foundation

extension Date {
  static func timeFromUnix(unixTime: Double) -> String {
    let timeInSeconds = TimeInterval(unixTime)
    let date = Date(timeIntervalSince1970: timeInSeconds)
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "HH:mm"
    return dateFormatter.string(from: date)
  }
}
