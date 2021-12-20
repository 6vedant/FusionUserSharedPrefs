//
//  File.swift
//  
//
//  Created by VJ on 16/12/21.
//

import Foundation
import FusionUserSharedPrefs_Common

public class UserDefaultsManager:  UserDefaultsManagerProtocol  {
    
    init() {
    	
    }
    
     
    
    public func set<T>(value: T?, key: String) {
        if let value = value {
            Foundation.UserDefaults.standard.set(value, forKey: key)
            Foundation.UserDefaults.standard.synchronize()
        } else {
            UserDefaults.standard.removeObject(forKey: key)
            
            
        }
    }
    
//    public func get<T>(for key: String, or defaultValue: T) -> T {
//    	let curr_val:T = UserDefaults.standard.value(forKey: ${1:String})(forKey: key)
//    	return T 
//    }
    
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
    
    public func getFloat(key: String) -> Float {
        let floatValue:Float = UserDefaults.standard.float(forKey: key)
        return floatValue
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
}
