//
//  TrekrMultiPlatformApp.swift
//  Shared
//
//  Created by Li, Muchen on 2021/1/25.
//

import SwiftUI

@main
struct TrekrMultiPlatformApp: App {
    
    @State var store = LocationStore()
    
    var body: some Scene {
        WindowGroup {
            
            TabView{
                
                NavigationView {
                    LocationsList(store: store)
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Location")
                }
                
                NavigationView {
                    WorldMap()
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                
                NavigationView {
                    TipsList()
                }
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Tips")
                }
            }
            
           
        }
    }
}
