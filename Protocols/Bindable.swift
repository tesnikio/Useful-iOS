import Foundation

public protocol Bindable {
    associatedtype Model
    func bind(to model: Model)
}
