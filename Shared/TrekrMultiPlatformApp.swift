//
//  TrekrMultiPlatformApp.swift
//  Shared
//
//  Created by Li, Muchen on 2021/1/25.
//

import SwiftUI

@main
struct TrekrMultiPlatformApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                LocationDetail(location: Location.example)
            }
        }
    }
}
