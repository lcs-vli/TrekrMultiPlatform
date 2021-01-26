//
//  WorldMap.swift
//  TrekrMultiPlatform
//
//  Created by Li, Muchen on 2021/1/25.
//
import MapKit
import SwiftUI

struct WorldMap: View {
    
    //centre on LCS, wide enough to show most of eastern Nother America
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.43922, longitude: -78.26571),
                                           span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    var body: some View {
        
        Map(coordinateRegion: $region)
            .navigationTitle("Map")
    
    }
}

struct WorldMap_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WorldMap()
        }
    }
}
