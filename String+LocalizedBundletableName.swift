// Tự học Swift 4.0 - xuanvinhtd

import Foundation

public extension String {
    
    func localized(using tableName: String?, in bundle: Bundle?) -> String {
        let bundle: Bundle = bundle ?? .main
        if let path = bundle.path(forResource: Localize.currentLanguage(), ofType: "lproj"),
            let bundle = Bundle(path: path) {
            return bundle.localizedString(forKey: self, value: nil, table: tableName)
        } else if let path = bundle.path(forResource: LCLBaseBundle, ofType: "lproj"),
            let bundle = Bundle(path: path) {
            return bundle.localizedString(forKey: self, value: nil, table: tableName)
        }
        return self
    }
    
    var localized: String {
        return localized(using: nil, in: .main)
    }
    
    func localized(in bundle: Bundle?) -> String {
        return localized(using: nil, in: bundle)
    }
    
    func localized(using tableName: String?) -> String {
        return localized(using: tableName, in: .main)
    }
}

