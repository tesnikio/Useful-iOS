//
//  UIView+Constraints.swift
//  EmbeddedControllers
//
//  Created by Mikhail Rubanov on 23/12/2018.
//  Copyright © 2018 akaDuality. All rights reserved.
//

import UIKit

extension UIView {
    func pinToBounds(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor),
            view.leadingAnchor.constraint(equalTo: leadingAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
}
