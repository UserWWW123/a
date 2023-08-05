//
//  profile.swift
//  a
//
//  Created by KWOK LAM on 7/31/23.
//

import SwiftUI

struct profile: View {
   
    @State private var selectedIndex = 0
    private let categories = ["COLLECTION", "RANKING"]
    
    var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [
                    Color(red:244/255, green:225/255, blue:228/255),
                    Color(red:249/255, green: 16/255 ,blue: 82/255)
                ]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Button(action:{}) {
                        Image("estee7")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150, alignment: .center)
                            .clipShape(Circle())
                            .overlay{
                                Circle()
                                .stroke(Color(red: 242/255, green: 244/255, blue: 225/255), lineWidth: 3)}
                    }
                    HStack(spacing:10){
                        
                        UserPage(value:1, title:"Got \"Heart\"")
                        UserPage(value:1, title:"Following")
                        UserPage(value:1, title:"Followers")
                    }
                    
                    HStack{
                        VStack(alignment: .leading, spacing: 4){
                            Text("User Name:")
                                .fontWeight(.light)
                            Text("User ID:")
                                .fontWeight(.light)
                        }
                    }
                    HStack(spacing:40){
                        ForEach(categories.indices, id: \.self) { index in
                            CategoryView(isActive: index == selectedIndex,  text: categories[index])
                                .padding(.leading, index==0 ? 18 :0)
                                .onTapGesture {
                                    selectedIndex = index
                                }
                        }
                    }
                    .padding()
                getContent(for: selectedIndex)
                    
                .padding(.horizontal, 5)
            }
        }
    }
    @ViewBuilder
    private func getContent(for index: Int) -> some View{
        switch index{
        case 0:
            collection()
        case 1:
            ranking()
        default:
            EmptyView()
        }
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}

struct collection: View {
    private let gridItems: [GridItem]=[
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View{
        ScrollView {
            LazyVGrid(columns: gridItems, spacing:1){
                ForEach(0 ..< 19, id: \.self) { item in
                    Image("estee7")
                        .resizable()
                    .scaledToFit()
                }
            }
        }
    }
}

struct ranking: View {
    private let gridItems: [GridItem]=[
        .init(.flexible(), spacing: 1)
    ]
    @State private var imageShow = false
    
    var body: some View{
        VStack {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing:1){
                    ForEach(0 ..< 19, id: \.self) { item in
                        VStack {
                            Button(action:{}){
                                NavigationLink(destination: ProductPage()){
                                    VStack {
                                        HStack {
                                            Text("\(item + 1)")
                                                .font(.title)
                                                .fontWeight(.bold)
                                                .bold()
                                                .padding(.trailing, 50)
                                            VStack{
                                                Spacer()
                                                Text("Nutritious")
                                                    .font(.title)
                                                Text("2-in-1 Foam Cleanser")
                                                Spacer()
                                            }
                                            .padding(.trailing, 50)
                                        }
                                        
                                    }
                                    .foregroundColor(.white)
                                }
                            }
                            ZStack {
                                Button(action:{
                                    imageShow = true
                                }){
                                    Text("Reminder")
                                        .foregroundColor(Color(red: 242/255, green: 244/255, blue: 225/255))
                                }
                                .padding(4)
                                .overlay(
                                    Rectangle()
                                        .stroke(lineWidth: 0.5)
                                        .foregroundColor(Color(red: 242/255, green: 244/255, blue: 225/255))
                            )
                                if imageShow {
                                    Color.clear
                                        .edgesIgnoringSafeArea(.all)
                                    VStack{
                                        Spacer()
                                        Image("estee7")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 100, height: 100)
                                        Spacer()
                                        
                                            .transition(.move(edge: .bottom))
                                        
                                        Button(action:{
                                            imageShow = false
                                        }){
                                            Text("back")
                                                .foregroundColor(Color(red: 242/255, green: 244/255, blue: 225/255))
                                        }
                                        .padding(4)
                                        .overlay(
                                            Rectangle()
                                                .stroke(lineWidth: 0.5)
                                                .foregroundColor(Color(red: 242/255, green: 244/255, blue: 225/255))
                                        )
                                    }
                                }
                            }
                            CustomDivider(color: .white)
                        }
                    }
                }
            }
        }
    }
}
