import Foundation
import UIKit

extension UIColor {
    
    static func transition(fromColor: UIColor, toColor: UIColor, progress: CGFloat) -> UIColor? {
        
        let toComponents = toColor.cgColor.components!
        
        guard let fromConvertedColor = fromColor.cgColor.converted(to: toColor.cgColor.colorSpace!, intent: .defaultIntent, options: nil) else {
            return nil
        }
        
        let fromComponents = fromConvertedColor.components!
        
        let componentsNumber = min(fromComponents.count, toComponents.count)
        
        var resultComponetns = [CGFloat]()
        
        for i in 0 ..< componentsNumber {
            let result = fromComponents[i] + (toComponents[i] - fromComponents[i]) * progress
            resultComponetns.append(result)
        }
        
        if let resultColor = CGColor.init(colorSpace: toColor.cgColor.colorSpace!, components: resultComponetns) {
            return  UIColor.init(cgColor: resultColor)
        }
        
        return nil
    }
    
}
