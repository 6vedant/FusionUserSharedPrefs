import Foundation
public class FusionUserSharedPrefs {
    

    public init() {
        
    }
    
    public func setKey(key:String, value:Any?) -> Void {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    public func getIntValue(key:String) -> Int{
        let intValue:Int = UserDefaults.standard.integer(forKey: key)
        return intValue
    }
    
    
    public func getStringValue(key:String) -> String{
        let strValue:String = UserDefaults.standard.string(forKey: key) ?? ""
        return strValue
    }
    
    public func getBoolValue(key:String) -> Bool{
        let boolValue:Bool = UserDefaults.standard.bool(forKey: key)
        return boolValue
    }
    
}
