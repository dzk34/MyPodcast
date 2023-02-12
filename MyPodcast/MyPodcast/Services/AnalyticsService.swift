//
//  AnalyticsService.swift
//  MyPodcast
//
//  Created by khaled on 12/02/2023.
//

import Foundation

// An analytics layer abstraction that will then use the specific data service (Appsflyer, Amplitude...)

protocol AnalyticsServiceable {
    func trackEvent(name: String, properties: [String:String])
    func setProperties(properties: [String:String])
}

class AnalyticsService: AnalyticsServiceable {
    // Call the analytics service tracking method with the specific name and eventual properties
    func trackEvent(name: String, properties: [String : String]) {
        
    }
    
    // Set properties specific to the analytics service
    func setProperties(properties: [String:String]) {
        
    }
}
