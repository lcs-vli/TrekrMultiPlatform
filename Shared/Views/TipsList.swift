//
//  TipsList.swift
//  TrekrMultiPlatform
//
//  Created by Li, Muchen on 2021/1/25.
//

import SwiftUI

struct TipsList: View {
    
    let tips: [Tip]
    
    var body: some View {
        
        //text will be unique
        List(tips, id: \.text) { tip in
            
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
            }
            
            Text(tip.text)
            
        }
    }
    
    // initializer pulls tips data from JSON
    //populates the array
    init() {
        
        //get a pointer to the file
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        
        //load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        //convert the data from the JSON file into the array
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    
}

struct TipsList_Previews: PreviewProvider {
    static var previews: some View {
        TipsList()
    }
}
