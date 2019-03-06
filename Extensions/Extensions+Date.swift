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
