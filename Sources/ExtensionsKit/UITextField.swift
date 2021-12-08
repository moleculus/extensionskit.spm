import UIKit

extension UITextField {
    public func setPlaceholder(_ placeholder: String?, withColor color: UIColor) {
        guard let placeholder = placeholder else {
            self.placeholder = nil
            self.attributedPlaceholder = nil
            return
        }
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: color,
            .font: font as Any
        ]
        
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: attributes)
    }
}
