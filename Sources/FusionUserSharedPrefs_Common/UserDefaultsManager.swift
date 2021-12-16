//
//  UserDefaultsManager.swift
//  
//
//  Created by VJ on 16/12/21.
//

import Foundation

public protocol UserDefaultsManagerProtocol {
    
    /*
     * default init method
     */
    
    init()
    
    /*
     * @property set
     *
     * @discussion key-value pairs for the value generic Object type
     *
     * @param value: Any Object
     *        key: Key String Value
     *
     */
    func set<T>(value: T?, key: String) -> Void
    
    
    /*
     * @property get
     *
     * @discussion get the value generic Object for the given key
     *
     * @param key: Key Value
     *        defVal: Default ObjValue
     *
     * @result Object Value
     */
    func get<T>(for key:String, or defaultValue: T) -> T
    
    /*
     * @property getInt
     *
     * @discussion Get the Integer value for the given key
     *             This method is required to support the earlier Swift versions for backward compatibility
     *
     * @param key: Key Value
     *
     * @result Int Value
     */
    func getInt(key:String) -> Int
    
    /*
     * @property getString
     *
     * @discussion Get the String value for the given key
     *             This method is required to support the earlier Swift versions for backward compatibility
     *
     * @param key: Key Value
     *
     * @result String Value
     */
    func getString(key:String) -> String
    
    /*
     * @property getBoolean
     *
     * @discussion Get the bolean value for the given key
     *             This method is required to support the earlier Swift versions for backward compatibility
     *
     * @param key: Key Value
     *
     * @result Boolean Value
     */
    func getBoolean(key:String) -> Bool
    
    /*
     * @property getDouble
     *
     * @discussion Get the Double value for the given key
     *             This method is required to support the earlier Swift versions for backward compatibility
     *
     * @param key: Key Value
     *
     * @result Double Value
     */
    func getDouble(key:String) -> Double
    
    /*
     * @property containsKey
     *
     * @discussion Returns true if the key is present in the UserDefaults memory for NonNull value, else return false
     *
     * @param key: Key Value
     *
     * @result ifContainsBool
     */
    func containsKey(key:String) -> Bool
    
    /*
     * @property removeKey
     *
     * @discussion Removes the Key-Value pair from the UserDefaults memory
     *
     * @param key: Key Value
     */
    func removeKey(key: String) -> Void
    
    /*
     * @property removeAll
     *
     * remove all the key-value pairs from the UserDefaults memory
     *
     */
    func removeAll() -> Void
    
    /*
     * @property getAll
     *
     * return the dictionary containing all the key-value pairs present in the UserDefaults
     *
     * @result Dictionary[Key, Value]
     */
    func getAll() -> [String: Any?]
}

