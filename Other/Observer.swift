import Foundation

public class Observer<BlockValue> {
    public weak var object: AnyObject?
    public var block: BlockValue?

    public init(object: AnyObject,
                block: BlockValue?) {
        self.object = object
        self.block = block
    }
}
