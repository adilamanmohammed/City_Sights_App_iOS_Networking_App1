//
//  ContentView.swift
//  CitySights App
//
//  Created by Adil Aman Mohammed on 8/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var businesses = [Business]()
    @State var query :String = ""
    var service = DataService()
    
    var body: some View {
        VStack{
            
            
            
            HStack{
                
                TextField("What are you Looking for ?", text: $query)
                Button {
                    // To Implement
                }
            label: {
                Text("Go")
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            }
            
            List (businesses) { b in
                
                Text(b.name ?? "Nil")
                
            }
            
            
            
            
        }
        .padding()
        .task{
            businesses = await service.businessSearch()
        }
    }
}

#Preview {
    ContentView()
}
