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
    @State var selectedBusiness: Business?
    
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
            
            List {
                
                ForEach(businesses){ b in
                    
                    VStack(spacing: 20){
                        HStack(spacing : 0){
                            Image("list-placeholder-image")
                                .padding(.trailing,16)
                            VStack(alignment: .leading){
                                Text(b.name ?? "Restaurant")
                                    .font(Font.system(size: 15))
                                    .bold()
                                Text(TextHelper.distanceAwayText(meters: b.distance ?? 0))
                                    .font(Font.system(size: 16))
                                    .foregroundStyle(Color(red: 67/255, green: 71/255, blue: 76/255))
                            }
                            Spacer()
                            
                            // Use the helper function to round the rating properly
                            let roundedRating = TextHelperForRating.RatingText(rating: b.rating ?? 0)

                            // Call Image with the correct name
                            Image("regular_\(roundedRating)")
                        }
                        Divider()
                    }
                    .onTapGesture {
                        selectedBusiness = b
                    }
                }
                .listRowSeparator(.hidden)
                
            }
            .listStyle(.plain)
            
            
            
            
        }
        .task{
            businesses = await service.businessSearch()
        }
        .sheet(item: $selectedBusiness) { item in
            BusinessDetailView(business: item)
        }
    }
}

#Preview {
    ContentView()
}
