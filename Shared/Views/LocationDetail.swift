//
//  LocationView.swift
//  TrekrMultiPlatform
//
//  Created by Li, Muchen on 2021/1/25.
//

import SwiftUI

struct LocationDetail: View {
    
    // the lcoation to show details about
    //a copy of an instance of a structure will be provided to this view
    let location: Location
    
    var body: some View {
        ScrollView{
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            HStack {
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
            HStack{
                
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Text(location.more)
                .padding([.horizontal, .bottom])
            
        }
        .navigationTitle(location.name)
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LocationDetail(location: Location.example)
        }
    }
}
