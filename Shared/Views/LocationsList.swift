//
//  LocationsList.swift
//  TrekrMultiPlatform
//
//  Created by Li, Muchen on 2021/1/25.
//

import SwiftUI

struct LocationsList: View {
    
    @ObservedObject var store: LocationStore
    
    var body: some View {
        
        //iterate over the list of lactions in the data store
        List(store.places){ location in
            
            //create a navigation link leading to the detail view
            //great example of abstration in action
            NavigationLink(destination: LocationDetail(location: location)) {
                
                HStack{
                    
                    Image(location.heroPicture)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                    
                    VStack(alignment: .leading) {
                        Text(location.name)
                        Text(location.country)
                            .font(.subheadline)
                    }
                        
                }
            }
            
        }
        .navigationTitle("Locations")
        
    }
}

struct LocationsList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LocationsList(store: testStore)
        }
    }
}
