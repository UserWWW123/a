//
//  explore.swift
//  a
//
//  Created by KWOK LAM on 7/31/23.
//

import SwiftUI

struct explore: View {
    @State private var search : String = ""
    private let gridItems: [GridItem]=[
        .init(.flexible(), spacing:1),
        .init(.flexible(), spacing:1)]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    Color(red:244/255, green:225/255, blue:228/255)
                    VStack {
                        VStack{
                            Image("1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                          /*  Color(red: 255/255, green: 118/255, blue: 139/255)
                                .frame(maxWidth: .infinity)
                                .frame(height:130)*/
                                .overlay{
                                    VStack{
                                        Text("EXPLORE")
                                            .padding(.top, 40)
                                            .font(.largeTitle)
                                            .fontWeight(.light)
                                        HStack{
                                            TextField("Search", text: $search)
                                        }
                                        .padding()
                                        .background(Color.white)
                                        .cornerRadius(10)
                                        .padding(.horizontal)
                                        .padding(.vertical, 20)
                                        
                                    }
                                    
                                }
                        }
                        
                        
                        VStack {
                            CustomDivider(color: Color.white)
                                Text("CATEGORIES")
                                    .font(.title)
                                    .fontWeight(.ultraLight)
                            LazyVGrid(columns: gridItems, spacing:10){
                                    Rectangle()
                                        .frame(width:180, height: 180)
                                        .foregroundColor(.white)
                                        .overlay(
                                        Text("SKINCARE")
                                        .font(.largeTitle)
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color.black)
                                        .opacity(0.7)
                                        )
                                    Rectangle()
                                        .frame(width:180, height: 180)
                                        .foregroundColor(.white)
                                        .overlay(
                                            Text("FRAGRANCE")
                                        .font(.largeTitle)
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color.black)
                                        .opacity(0.7)
                                            )
                                    Rectangle()
                                        .frame(width:180, height: 180)
                                        .foregroundColor(.white)
                                        .overlay(
                                            Text("MAKEUP")
                                        .font(.largeTitle)
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color.black)
                                        .opacity(0.7)
                                            )
                                    Rectangle()
                                        .frame(width:180, height: 180)
                                        .foregroundColor(.white)
                                        .overlay(
                                            Text("OTHER")
                                        .font(.largeTitle)
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color.black)
                                        .opacity(0.7)
                                            )
                                }
                                .padding(.horizontal, 7)
                            .padding(.bottom, 10)
                        }
                            
                            NavigationLink(destination: random()) {
                                HStack{
                                    Rectangle()
                                        .frame(width: 370, height: 180)
                                        .foregroundColor(.white)
                                        .overlay(
                                            Text("RANDOM")
                                                .font(.largeTitle)
                                                .fontWeight(.ultraLight)
                                                .foregroundColor(Color.black)
                                                .opacity(0.7)
                                            
                                        )
                                }
                            }
                            .padding(.bottom)
                    }
                }
            }
            .ignoresSafeArea(edges: .top)
        }
    }
}
struct explore_Previews: PreviewProvider {
    static var previews: some View {
        explore()
    }
}

