// Tự học Swift 4.0 - xuanvinhtd

import Foundation

extension UserDefaults {
    subscript(key: String) -> Any? {
        get {
            return object(forKey: key)
        }
        set {
            if let v = newValue as? String {
                set(v, forKey: key)
            } else if let v = newValue as? Int {
                set(v, forKey: key)
            } else if let v = newValue as? Bool {
                set(v, forKey: key)
            } else if let v = newValue as? Float {
                set(v, forKey: key)
            } else if let v = newValue as? URL {
                set(v, forKey: key)
            } else if newValue == nil {
                removeObject(forKey: key)
            } else {
                assertionFailure("Invalid value type")
            }
            
        }
    }
    
    func hasKey(_ key: String) -> Bool {
        return object(forKey: key) != nil
    }
    
    func removeAll() {
        let appDomain = Bundle.main.bundleIdentifier!
        self.removePersistentDomain(forName: appDomain)
    }
}
