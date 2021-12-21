//
//  File.swift
//  
//
//  Created by VJ on 18/12/21.
//

import Foundation

//import Android
//import AndroidContent
//import FusionUserSharedPrefs_Common
//import Java
//
//public class UserDefaultsManager: Object, UserDefaultsManagerProtocol, SharedPreferencesProxyProtocol   {
//    
//    
//    weak var delegate: SharedPreferencesProxyProtocol? 
//      
//    public func set<T>(value: T?, key: String) {
//    
//    
//        if let value = value {
//            Foundation.UserDefaults.standard.set(value, forKey: key)
//            Foundation.UserDefaults.standard.synchronize()
//        } else {
//            UserDefaults.standard.removeObject(forKey: key) 
//        }
//    }
//    
////    public func get<T>(for key: String, or defaultValue: T) -> T {
////    	let curr_val:T = Userandard.value(forKey: )(forKey: key)
////    	return T 
////    }
//    
//    public func getInt(key: String) -> Int {
//        let intValue:Int32 = (delegate?.getInt(key: key, defValue: 0)) ?? 0
//        return Int(intValue)
//    }
//    
//    public func getString(key: String) -> String {
//        let strValue:String = delegate?.getString(key: key, defValue: "defvalueforgetstring")  ?? ""
//        return strValue
//    }
//    
//    public func getBoolean(key: String) -> Bool {
//        let boolValue:Bool = delegate?.getBoolean(key: key, defValue: false)  ?? false
//        return boolValue
//    }
//    
//    public func getFloat(key: String) -> Float {
//        let floatValue:Float = delegate?.getFloat(key: key, defValue: 0.0)  ?? 0.0
//        return floatValue
//    }
//    
//    public func containsKey(key: String) -> Bool {
//        if UserDefaults.standard.object(forKey: key) == nil {
//            return false
//        } else {
//            return true
//        }
//    }
//    
//    public func removeKey(key: String) {
//        UserDefaults.standard.removeObject(forKey: key)
//        UserDefaults.standard.synchronize()
//    }
//    
//    public func removeAll() {
//        if let appDomain = Bundle.main.bundleIdentifier {
//            UserDefaults.standard.removePersistentDomain(forName: appDomain)
//        }
//    }
//
//    
// }
