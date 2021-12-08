import UIKit

extension UIViewController {
    
    /// Searches for UILabel that displays the system navigationItem.title and returns its font.
    /// May break in future iOS releases or with custom navigationBars
    
    var titleFont: UIFont? {
        for subview in navigationController?.navigationBar.subviews ?? [] {
            for subview in subview.subviews {
                if let subview = subview as? UILabel {
                    if let textStyle = subview.font.fontDescriptor.fontAttributes[UIFontDescriptor.AttributeName.textStyle] as? String, textStyle == "UICTFontTextStyleShortEmphasizedBody" {
                        return subview.font
                    }
                }
            }
        }
        
        return nil
    }
}
