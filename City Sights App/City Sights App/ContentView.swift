//
//  ContentView.swift
//  CitySights App
//
//  Created by Adil Aman Mohammed on 8/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var query :String = ""
    
    var body: some View {
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
        .padding()
        .onAppear(perform: {
            print(Bundle.main.infoDictionary? ["API_KEY"] as? String)
        })
    }
}

#Preview {
    ContentView()
}
