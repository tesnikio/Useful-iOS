import UIKit

internal final class SeparatorView: UIView {
    
    // MARK: Lifecycle
    internal init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setUpConstraints()
    }
    
    internal required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Internal
    internal override var intrinsicContentSize: CGSize {
        return CGSize(width: width, height: width)
    }
    
    internal var color: UIColor {
        get { return backgroundColor ?? .clear }
        set { backgroundColor = newValue }
    }
    
    internal var width: CGFloat = 1 {
        didSet { invalidateIntrinsicContentSize() }
    }
    
    // MARK: Private
    private func setUpConstraints() {
        setContentHuggingPriority(.defaultLow, for: .horizontal)
        setContentHuggingPriority(.defaultLow, for: .vertical)
        setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        setContentCompressionResistancePriority(.defaultLow, for: .vertical)
    }
    
}

