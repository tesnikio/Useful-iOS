//
//  Lifecycable.swift
//  Guess the Place!
//
//  Created by Nikita Teslyuk on 15/03/2019.
//  Copyright © 2019 Tesnik. All rights reserved.
//

import Foundation

@objc protocol Lifecycable {
  @objc optional func viewDidAppear()
  @objc optional func viewDidLoad()
  @objc optional func viewWillAppear()
}
