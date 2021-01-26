//
//  LocationStore.swift
//  TrekrMultiPlatform
//
//  Created by Li, Muchen on 2021/1/25.
//

import Foundation

class LocationStore: ObservableObject {
    
    var places: [Location]
    
    init(){
        
        //get a pointer to file
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        //load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        //convert the data from the JSON file into the array
        places = try! JSONDecoder().decode([Location].self, from: data)
        
        //sort the list oflocations alphabetically by name, in ascending order
        places.sort(by: {
            $0.name < $1.name
        })
    }
}

var testStore = LocationStore()
