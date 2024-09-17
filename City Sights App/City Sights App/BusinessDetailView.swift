//
//  BusinessDetailView.swift
//  City Sights App
//
//  Created by Adil Aman Mohammed on 9/17/24.
//

import SwiftUI

struct BusinessDetailView: View {
    
    var business: Business?
    
    var body: some View {
        
        
        VStack (spacing : 0){
            
            ZStack(alignment: .trailing){
                Image("detail-placeholder-image")
                    .resizable()
                
                VStack{
                    Spacer()
                    Image("yelp-attribution-image")
                        .frame(width: 72,height: 36)
                }
                
            }
            .frame(height: 164)
            
            
            if let isClose = business?.isClosed {
                
                ZStack(alignment: .leading){
                    Rectangle()
                        .foregroundStyle(isClose ? .red : .green)
                    Text(isClose ? "Closed" : "Open")
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                    
                }
                .frame(height: 36)
                
            }
            
            
            
            
            ScrollView{
                
                VStack(alignment : .leading ,spacing: 0){
                    Text(business?.name ?? "")
                        .font(Font.system(size: 21))
                        .bold()
                        .padding(.bottom, 10)
                        .padding(.top, 16)
                    Text("\(business?.location?.address1 ?? ""), \(business?.location?.city ?? "")")
                    
                    Text("\(business?.location?.state ?? "") \(business?.location?.zipCode ?? ""), \(business?.location?.country ?? "")")
                        .padding(.bottom, 10)
                    
                    // Use the helper function to round the rating properly
                    let roundedRating = TextHelperForRating.RatingText(rating: business?.rating ?? 0)

                    // Call Image with the correct name
                    Image("regular_\(roundedRating)")
                        .padding(.bottom, 16)

                    Divider()
                        
                    
                    HStack{
                        
                        Image(systemName:  "phone")
                        Text(business?.phone ?? "")
                        Spacer()
                        Image(systemName: "arrow.right")
                        
                    }
                    .padding(.vertical, 12)
                    
                    Divider()
                        
                    
                    HStack{
                        
                        Image(systemName:  "globe")
                        Text(business?.url ?? "")
                            .lineLimit(1)
                        Spacer()
                        Image(systemName: "arrow.right")
                        
                    }
                    .padding(.vertical, 12)
                    
                    Divider()
                        .padding(.top, 12)
                    HStack{
                        
                        Image(systemName:  "bubble.left.and.bubble.right")
                        Text("\(business?.reviewCount ?? 0) reviews")
                        Spacer()
                        Image(systemName: "arrow.right")
                        
                    }
                    .padding(.vertical, 12)
                    

                    Spacer()
                }
                
            }
            .padding(.horizontal)
        }
        
        
    }
}

#Preview {
    BusinessDetailView()
}
