// Tự học Swift 4.0 - xuanvinhtd

import UIKit

extension UIViewController  {
    
    class func initFromNib() -> UIViewController {
        let hasNib: Bool = Bundle.main.path(forResource: self.namOfClass, ofType: "nib") != nil
        if hasNib {
            log.error("Not found name of view controller.")
            return UIViewController()
        }
        return UIStoryboard.init(name: "LiveChat_Main", bundle: nil).instantiateViewController(withIdentifier: self.identifier)
    }
    
    func configItems() {}
    
    func initData() {}
    
    func registerNotitication() {}
    
    func deregisterNotification() {}

}
