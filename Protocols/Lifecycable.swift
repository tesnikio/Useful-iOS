import Foundation

@objc protocol Lifecycable {
  @objc optional func viewDidLoad()
  @objc optional func viewWillAppear()
  @objc optional func viewDidAppear()
}

//make them optional

extension Lifecycable {
  func viewDidLoad() {}
  func viewWillAppear() {}
  func viewDidAppear() {}
}

//
