// Tự học Swift 4.0 - xuanvinhtd

import UIKit

extension NSObject {
    class var namOfClass: String {
        return NSStringFromClass(self).components(separatedBy:".").last! as String
    }
    
    class var identifier: String {
        return String(format: "%@ID", self.namOfClass)
    }
}
