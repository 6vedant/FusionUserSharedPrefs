//
//  File.swift
//  
//
//  Created by VJ on 16/12/21.
//

import Foundation
import FusionUserSharedPrefs_Common

public class UserDefaulatsManager: UserDefaultsManagerProtocol  {
    
    required public init(){}
    
    public func set<T>(value: T?, key: String) {
        if let value = value {
            UserDefaults.standard.setValue(value, forKey: key)
            UserDefaults.standard.synchronize()
        } else {
            UserDefaults.standard.removeObject(forKey: key)
        }
    }
    
    public func get<T>(for key: String, or defaultValue: T) -> T {
        return (UserDefaults.standard.value(forKey: key) as? T) ?? defaultValue
    }
    
    public func getInt(key: String) -> Int {
        let intValue:Int = UserDefaults.standard.integer(forKey: key)
        return intValue
    }
    
    public func getString(key: String) -> String {
        let strValue:String = UserDefaults.standard.string(forKey: key) ?? ""
        return strValue
    }
    
    public func getBoolean(key: String) -> Bool {
        let boolValue:Bool = UserDefaults.standard.bool(forKey: key)
        return boolValue
    }
    
    public func getDouble(key: String) -> Double {
        let doubleValue:Double = UserDefaults.standard.double(forKey: key)
        return doubleValue
    }
    
    public func containsKey(key: String) -> Bool {
        if UserDefaults.standard.object(forKey: key) == nil {
            return false
        } else {
            return true
        }
    }
    
    public func removeKey(key: String) {
        UserDefaults.standard.removeObject(forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    public func removeAll() {
        if let appDomain = Bundle.main.bundleIdentifier {
            UserDefaults.standard.removePersistentDomain(forName: appDomain)
        }
    }
    
    public func getAll() -> [String : Any?] {
        return UserDefaults.standard.dictionaryRepresentation()
    }
}
