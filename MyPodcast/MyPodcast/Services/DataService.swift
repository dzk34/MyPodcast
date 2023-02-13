//
//  DataService.swift
//  MyPodcast
//
//  Created by khaled on 12/02/2023.
//

import Foundation

// A data layer abstraction that will then use the specific data service (CoreData, Realm...)
protocol DataServiceable {
    func loadData() -> AnyObject?
    func saveData(data: Data) -> Bool
    func updateData(data: Data) -> Bool
    func deleteData(data: Data) -> Bool
}

class DataService: DataServiceable {
    func loadData() -> AnyObject? {
        print("Data loaded")
        return nil
    }
    
    func saveData(data: Data) -> Bool {
        print("Data saved")
        return false
    }
    
    func updateData(data: Data) -> Bool {
        print("Data updated")
        return false
    }
    
    func deleteData(data: Data) -> Bool {
        print("Data delete")
        return false
    }
}
