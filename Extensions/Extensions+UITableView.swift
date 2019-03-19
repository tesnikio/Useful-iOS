import UIKit

extension UITableView {
  func register(nibModels: [CellType.Type]) {
    for model in nibModels {
      let identifier = String(describing: model.cellAnyType)
      let nib = UINib(nibName: identifier, bundle: nil)
      self.register(nib, forCellReuseIdentifier: identifier)
    }
  }
}
