import Foundation
public class FusionUserSharedPrefs {
    

    public init() {
        
    }
    
    public func set<T>(value: T?, key: String) {
            if let value = value {
                UserDefaults.standard.setValue(value, forKey: key)
                UserDefaults.standard.synchronize()
            } else {
                UserDefaults.standard.removeObject(forKey: key)
            }
    }
    
    public func getInt(key:String) -> Int{
        let intValue:Int = UserDefaults.standard.integer(forKey: key)
        return intValue
    }
    
    
    public func getString(key:String) -> String{
        let strValue:String = UserDefaults.standard.string(forKey: key) ?? ""
        return strValue
    }
    
    public func getBoolean(key:String) -> Bool{
        let boolValue:Bool = UserDefaults.standard.bool(forKey: key)
        return boolValue
    }
    
    public func getDouble(key:String) -> Double{
        let doubleValue:Double = UserDefaults.standard.double(forKey: key)
        return doubleValue
    }
    
    public func getBool(key:String) -> Bool{
        let boolValue:Bool = UserDefaults.standard.bool(forKey: key)
        return boolValue
    }
    
    public func get<T>(for key:String, or defaultValue: T) -> T {
            return (UserDefaults.standard.value(forKey: key) as? T) ?? defaultValue
    }
    
    public func removeValue(key: String) {
            UserDefaults.standard.removeObject(forKey: key)
            UserDefaults.standard.synchronize()
    }
    
    
    
    public func containsKey(key:String) -> Bool {
        if UserDefaults.standard.object(forKey: key) == nil {
            return true
        } else {
            return false
        }
    }
    
    
}
