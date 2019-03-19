//
//  Extensions+UITableView.swift
//  NTVK
//
//  Created by Nikita Teslyuk on 06/03/2019.
//  Copyright © 2019 Tesnik. All rights reserved.
//

import UIKit

extension UITableView {
  func dequeueReusableCell(withModel model: CellViewAnyModel, for indexPath: IndexPath) -> UITableViewCell {
    let identifier = String(describing: type(of: model).cellAnyType)
    let cell = self.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
    
    model.setupAny(cell: cell)
    return cell
  }
  
  func register(nibModels: [CellViewAnyModel.Type]) {
    for model in nibModels {
      let identifier = String(describing: model.cellAnyType)
      let nib = UINib(nibName: identifier, bundle: nil)
      self.register(nib, forCellReuseIdentifier: identifier)
    }
  }
}
