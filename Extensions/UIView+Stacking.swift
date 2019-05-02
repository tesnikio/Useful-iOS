//
//  UIView+Stacking.swift
//  video-social
//
//  Created by Brian Voong on 4/28/19.
//  Copyright © 2019 Tieda Wei. All rights reserved.
//

import UIKit

extension UIView {
  
  @discardableResult
  func withSize(size: CGSize) -> UIView {
    translatesAutoresizingMaskIntoConstraints = false
    widthAnchor.constraint(equalToConstant: size.width).isActive = true
    heightAnchor.constraint(equalToConstant: size.height).isActive = true
    return self
  }
  
  @discardableResult
  func withHeight(height: CGFloat) -> UIView {
    translatesAutoresizingMaskIntoConstraints = false
    heightAnchor.constraint(equalToConstant: height).isActive = true
    return self
  }
  
  @discardableResult
  func withWidth(_ width: CGFloat) -> UIView {
    translatesAutoresizingMaskIntoConstraints = false
    widthAnchor.constraint(equalToConstant: width).isActive = true
    return self
  }
  
  @discardableResult
  func withBorder(width: CGFloat, color: UIColor) -> UIView {
    layer.borderWidth = width
    layer.borderColor = color.cgColor
    return self
  }
}

extension UIEdgeInsets {
  static func allSides(side: CGFloat) -> UIEdgeInsets {
    return .init(top: side, left: side, bottom: side, right: side)
  }
}

extension UIImageView {
  convenience init(image: UIImage?, contentMode: UIView.ContentMode = .scaleAspectFill) {
    self.init(image: image)
    self.contentMode = contentMode
    self.clipsToBounds = true
  }
}
