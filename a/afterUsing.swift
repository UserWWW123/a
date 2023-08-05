//
//  afterUsing.swift
//  a
//
//  Created by KWOK LAM on 7/30/23.
//

import SwiftUI

struct afterUsing: View {
    var body: some View {
        ZStack {
            Image("estee 7")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 20) {
                    Text("How The Product Work")
                        .font(.title)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                        .foregroundColor(.white)
                    
                    Text("What's it able:")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    Text("You can put some pictures to show how the user's skin changes when using the product")
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .frame(width: 400)
              
                    VStack(spacing: 20) {
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 360, height: 300)
                            .overlay(
                                VStack{
                                    Text("Day 0")
                                        .font(.title)
                                        .fontWeight(.light)
                                    
                                    Text("Before using Nutritious")
                                        .font(.headline)
                                        .fontWeight(.ultraLight)
                                }
                                    .padding(.bottom)
                            )
                        
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 360, height: 300)
                            .overlay(
                                VStack{
                                    Text("Day 1")
                                        .font(.title)
                                        .fontWeight(.light)
                                    
                                    Text("Start using Nutritious")
                                        .font(.headline)
                                        .fontWeight(.ultraLight)
                                }
                                    .padding(.bottom)
                            )
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 360, height: 300)
                            .overlay(
                                VStack{
                                    Text("Day 15")
                                        .font(.title)
                                        .fontWeight(.light)
                                }
                                    .padding(.bottom)
                            )
                        
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 360, height: 300)
                            .overlay(
                                VStack{
                                    Text("Day 30")
                                        .font(.title)
                                        .fontWeight(.light)
                                }
                                    .padding(.bottom)
                            )
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 360, height: 300)
                            .overlay(
                                VStack{
                                    Text("Day 365")
                                        .font(.title)
                                        .fontWeight(.light)
                                }
                                    .padding(.bottom)
                            )
                        Spacer()
                    }


                        ZStack {
                            VStack {
                                HStack {
                                    Spacer()
                                    Text("Comment")
                                        .font(.largeTitle)
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                                        .padding(.top, 10)
                                        .overlay(
                                            Color(.gray)
                                                .frame(width: 200, height: 2)
                                                .padding(.top, 5), alignment:.bottom
                                        )
                                        .padding(.bottom, 10)
                                    Spacer()
                                }
                                VStack(spacing: 20) {
                                    ForEach(0 ..< 5) { item in
                                        HStack(alignment: .top) {
                                            Image("estee7new")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(maxWidth: 80, maxHeight: 80)
                                            
                                            VStack(alignment: .leading, spacing: 10) {
                                                Text("User name:")
                                                    .font(.headline)
                                                    .fontWeight(.regular)
                                                    .multilineTextAlignment(.leading)
                                                
                                                Text("Comment (text or image)")
                                                    .font(.subheadline)
                                                    .fontWeight(.light)
                                                    .multilineTextAlignment(.leading)
                                                
                                                ScrollView(.horizontal) {
                                                    HStack {
                                                        Rectangle()
                                                            .frame(width: min(UIScreen.main.bounds.width - 200, 200), height: 200)
                                                            .foregroundColor(Color.gray)
                                                            .overlay(
                                                                VStack {
                                                                    Text("Image: Users can share their product experience through photos")
                                                                        .fontWeight(.light)
                                                                        .font(.body)
                                                                        .padding(.horizontal)
                                                                    Text("Day 0")
                                                                }
                                                            )
                                                        
                                                        Rectangle()
                                                            .frame(width: min(UIScreen.main.bounds.width - 200, 200), height: 200)
                                                            .foregroundColor(Color.gray)
                                                            .overlay(
                                                                VStack {
                                                                    Text("Day 1")
                                                                        .font(.title)
                                                                        .fontWeight(.light)
                                                                }
                                                            )
                                                        Rectangle()
                                                            .frame(width: min(UIScreen.main.bounds.width - 200, 200), height: 200)
                                                            .foregroundColor(Color.gray)
                                                            .overlay(
                                                                VStack {
                                                                    Text("Day 2")
                                                                        .font(.title)
                                                                        .fontWeight(.light)
                                                                }
                                                            )
                                                    }
                                                }                                                            .padding(.trailing, 280)

                                            }
                                            Spacer().frame(width: 100)
                                        }
                                    }
                                    .padding(.leading, 260)
                                }
                                .padding()
                            }
                            .padding(.horizontal)
                                .frame(maxWidth: .infinity)
                            .background(.white)
                        }
                    
                }
                .padding()
            }
        }

    }
}


struct afterUsing_Previews: PreviewProvider {
    static var previews: some View {
        afterUsing()
    }
}
