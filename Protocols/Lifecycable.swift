import Foundation

@objc protocol Lifecycable {
  @objc optional func viewDidAppear()
  @objc optional func viewDidLoad()
  @objc optional func viewWillAppear()
}
