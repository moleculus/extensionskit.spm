import Foundation
import UIKit

public extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

extension String {
    
    /// Iterates over the given strings and returns the maximum width
    /// that is needed to display each of them without truncating.
    /// Each string is expected to be displayed on a single line.
    ///
    /// - Parameters:
    ///     - strings: The string for which you need to calculate the maximum width.
    ///     - font: The font to be used for the label. Use the same value as in your UI.
    ///
    /// - Returns: The maximum width that is needed to display each string (individually)
    /// on a single line without truncating.
    
    public static func preferredWidth(for strings: [String], withFont font: UIFont) -> CGFloat {
        var width: CGFloat = 0

        for string in strings {
            let rect = string.boundingRect(
                with: CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude),
                options: [.usesFontLeading, .usesLineFragmentOrigin],
                attributes: [ .font: font ],
                context: nil
            )

            let calculatedWidth = ceil(rect.width) + 1
            width = Swift.max(calculatedWidth, width)
        }

        return width
    }
}
