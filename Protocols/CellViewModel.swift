import UIKit

protocol CellViewAnyModel {
  static var cellAnyType: UIView.Type { get }
  func setupAny(cell: UIView)
}

protocol CellViewModel: CellViewAnyModel {
  associatedtype CellType: UIView
  func setup(cell: CellType)
}

extension CellViewModel {
  static var cellAnyType: UIView.Type {
    return CellType.self
  }

  func setupAny(cell: UIView) {
    if let cell = cell as? CellType {
      setup(cell: cell)
    } else {
      assertionFailure("Wrong usage")
    }
  }
}

extension UITableView {
  func dequeueReusableCell(withModel model: CellViewAnyModel, for indexPath: IndexPath) -> UITableViewCell {
    let indetifier = String(describing: type(of: model).cellAnyType)
    let cell = self.dequeueReusableCell(withIdentifier: indetifier, for: indexPath)

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



