//
//  ProductPage.swift
//  a
//
//  Created by KWOK LAM on 7/30/23.
//

import SwiftUI

struct ProductPage: View {
    var body: some View {
            NavigationStack{
            ScrollView {
                VStack{
                    ZStack{
                        VStack{
                            Image("product2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .edgesIgnoringSafeArea(.top)
                            DescriptionView()
                                .offset(y: -40)
                            HStack{
                                Text("$458")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Spacer()
                                Button(action: {}, label: {
                                    Text("Add to Cart")
                                        .padding()
                                        .padding(.horizontal)
                                        .background(Color.white)
                                        .cornerRadius(10.0)
                                })
                            }
                            .padding()
                            .padding(.horizontal)
                            .background(Color.brown)
                            .frame(maxHeight: .infinity, alignment: .bottom)
                        }
                        .edgesIgnoringSafeArea(.bottom)
                        .navigationBarBackButtonHidden(false)
                    }
                }
                .overlay(
                    HStack{
                       NavigationLink(destination: afterUsing()) {
                           Image(systemName: "pencil.circle")
                               .resizable()
                               .frame(width: 20, height: 20)
                               .foregroundColor(.gray)
                       }
                       
                       Button(action: {}) {
                           Image(systemName: "heart")
                               .resizable()
                               .frame(width: 20, height: 20)
                               .foregroundColor(.gray)
                       }
                       
                   NavigationLink(destination: learningView()){
                           Image(systemName: "books.vertical")
                               .resizable()
                               .frame(width: 20, height: 20)
                               .foregroundColor(.gray)
                       }
                       
                       Button(action: {}) {
                           Image(systemName: "bubble.right")
                               .resizable()
                               .frame(width: 20, height: 20)
                               .foregroundColor(.gray)
                       }
                   }
                       .padding(.bottom, 210)
                       .padding(.leading, 210)
               )

            }
        }
    }
}

struct ProductPage_Previews: PreviewProvider {
    static var previews: some View {
        ProductPage()
    }
}

struct DescriptionView: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text("Nutritious")
                    .fontWeight(.light)
                    .font(.largeTitle)
                    .padding(.trailing,120)
                
                Text("Radiant Essence Treatment Lotion")
                    .font(.title)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing,100)
                    .fixedSize(horizontal: false, vertical: true)
                
                HStack(spacing:4){
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        Image(systemName: "star.fill")
                    }
                    Text("(4.9)")
                        .opacity(0.5)
                        .padding(.leading,8)
                    Spacer()
                }
                Text("Product Details")
                    .fontWeight(.medium)
                    .padding(.top, 8)

                VStack(alignment: .leading, spacing: 8){
                    Text("Show your skin some love with peak performance skincare from NUTRITIOUS.")
                    Text("If your skin is grumpy, dull and irritable, this collection is what you need. Ingeniously calibrated, nutrient-rich formulas feature naturally derived ingredients. Skincare that will help skin flourish and flaunt its natural vibrancy. It's as simple as that.")
                }
                .lineSpacing(8.0)
                .opacity(0.6)
                .padding(.vertical, 3)
                .fixedSize(horizontal: false, vertical: true)

                HStack(alignment: .bottom){
                    Spacer()
                    Button(action:{}){
                        Image(systemName: "minus")
                            .padding(.all, 8)
                    }
                    .frame(width: 30, height: 30)
                    .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                    .foregroundColor(.black)
                    
                    Text("1")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 8)
                    
                    Button(action:{}){
                        Image(systemName: "plus")
                            .padding(.all, 8)
                    }
                    .frame(width: 30, height: 30)
                    .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                    .foregroundColor(.black)
                }
            }
            .padding()
            .padding(.top)
            .background(Color.white)
            .cornerRadius(40)
            
        }
    }
}
