//
//  random.swift
//  a
//
//  Created by KWOK LAM on 7/31/23.
//

import SwiftUI

struct random: View {
    var images = ["1", "product1", "product2", "product3"]
    private func scrollToBottom(with scrollViewProxy: ScrollViewProxy){
        withAnimation{
            scrollViewProxy.scrollTo("Bottom", anchor: .bottom)
        }
    }

    var body: some View {
        TabView {
            ScrollView(showsIndicators: false) {
                ZStack {
                    Color(red:244/255, green:225/255, blue:228/255)
                    VStack(spacing: 10) {
                            VStack{
                                Color(.white)
                                    .frame(maxWidth: .infinity)
                                    .frame(height:130)
                                    .overlay(
                                        Text("RANDOM")
                                        .padding(.top, 40)
                                    .font(.largeTitle)
                                    .fontWeight(.light)
                                   )
                            }
                                                    
                            VStack(spacing: 20) {
                                ForEach(0 ..< 3) { item in
                                    VStack{
                                        HStack{
                                            Text("NUTRITIOUS")
                                                .fontWeight(.light)
                                                .font(.headline)
                                                .alignmentGuide(.leading){ _ in 0}
                                            Spacer()
                                            
                                            Button(action:{}){
                                                Image(systemName:"pencil.circle")
                                                    .foregroundColor(.gray)
                                            }
                                            
                                            Button(action:{}){
                                                Image(systemName:"books.vertical")
                                            }
                                            .foregroundColor(.gray)

                                            Button(action:{}){
                                                Image(systemName:"bubble.right")
                                            }
                                            .foregroundColor(.gray)

                                            Button(action:{}){
                                                Image(systemName:"heart")
                                            }
                                            .foregroundColor(.gray)

                                        }
                                        ScrollView(.horizontal, showsIndicators: false){
                                            HStack{
                                                ForEach(0..<images.count, id: \.self){index in
                                                    Image(images[index])
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width:UIScreen.main.bounds.width)
                                                }
                                            }
                                        }
                                    
                                        VStack{
                                            Text("Product Description:")
                                                .font(.body)
                                                .multilineTextAlignment(.leading)
                                                .fontWeight(.light)
                                        }
                                        Text("Comment:")
                                            .font(.body)
                                            .multilineTextAlignment(.leading)
                                            .fontWeight(.light)
                                        VStack(spacing: 10) {
                                            ForEach(0 ..< 2) { item in
                                                HStack {
                                                    Image("estee7")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .clipShape(Circle())
                                                        .frame(width:40, height:40)
                                                    
                                                    GeometryReader{ geometry in
                                                        Text("Comment: Text")
                                                            .font(.body)
                                                            .fontWeight(.light)
                                                            .padding(.vertical,2)
                                                            .fixedSize(horizontal:false, vertical:true)
                                                            .frame(width: geometry.size.width)
                                                            .background(Color.white)
                                                        Spacer()
                                                    }
                                                }
                                            }
                                            Spacer()
                                            CustomDivider(color: Color.white)

                                        }
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }

                    }
                .ignoresSafeArea()
                }
            .ignoresSafeArea(edges: .top)

            }
    }
}

struct random_Previews: PreviewProvider {
    static var previews: some View {
        random()
    }
}

struct CustomDivider: View {
    var color: Color

    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: 2)
    }
}
