//
//  Favorite.swift
//  SnowSeeker
//
//  Created by APPLE on 29/09/24.
//

import SwiftUI

@Observable
class Favorites {
    private var resorts: Set<String>
    private let key = "Favorites"
    
    init(){
        // load our save data
        resorts = []
    }
    
    func contains(_ resort: Resort) -> Bool{
        resorts.contains(resort.id)
    }
    
    func add(_ resort: Resort){
        resorts.insert(resort.id)
        save()
    }
    
    func remove(_ resort: Resort){
        resorts.remove(resort.id)
        save()
    }
    
    func save(){
        
    }
}
