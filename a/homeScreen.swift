//
//  homepage.swift
//  a
//
//  Created by KWOK LAM on 7/29/23.
//

import SwiftUI

struct homeScreen: View {
    @State private var selectedIndex = 0
    private let categories = ["NEW", "BEST SELLER"]
    var body: some View {
        
        TabView {
            NavigationStack {
                    ZStack{
                        Color(red:244/255, green:225/255, blue:228/255)
                            .edgesIgnoringSafeArea(.all)
                        ScrollView {
                            VStack{
                                VStack(alignment: .leading){
                                    HStack{
                                        TagLineView()
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.leading)
                                        AppBarView()
                                            .frame(maxWidth: .infinity, alignment: .trailing)
                                            .padding(.trailing)
                                        
                                    }
                                    Image("1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    SearchView()
                                    ScrollView(.horizontal,showsIndicators: false) {
                                        HStack(spacing:40){
                                            ForEach(categories.indices, id: \.self) { index in
                                                Spacer()
                                                CategoryView(isActive: index == selectedIndex,  text: categories[index])
                                                    .padding(.leading, index==0 ? 18 :0)
                                                    .onTapGesture {
                                                        selectedIndex = index
                                                    }
                                            }
                                        }
                                        .padding()
                                    }
                                    getContent(for: selectedIndex)
                                }
                            }
                        }
                        
                    }
                 
                }
            
            homeScreen()
             .tabItem{
                 Label("Home", systemImage: "house")
             }
         explore()
             .tabItem{
                 Label("Explore", systemImage: "magnifyingglass")
             }
         profile()
             .tabItem{
                 Label("Profile", systemImage: "person")
             }
            Spacer()
            }
        }
    @ViewBuilder
    private func getContent(for index: Int) -> some View{
        switch index{
        case 0:
            case0()
        case 1:
            case1()
        default:
            EmptyView()
        }
    }
    }
struct case1: View{
    var body: some View{
    VStack{
        Text("Best Seller")
        .font(.system(size:24))
        .frame(maxWidth: .infinity, alignment: .center)
    
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    NavigationLink(destination: ProductPage(), label: {ProductCardView(image: Image("product2"))
                    })
                    .foregroundColor(.black)
                    
                    }
                .padding(.trailing)
                }
            .padding(.leading)
            }
        .padding(.bottom, 30)
        }
    }
}

struct case0: View {
    var body: some View{
        VStack{
            Text("What's New")
                .font(.system(size:24))
                .frame(maxWidth: .infinity, alignment: .center)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        NavigationLink(destination: ProductPage(), label: {ProductCardView(image: Image("product2"))
                        })
                        .foregroundColor(.black)
                        
                    }
                    .padding(.trailing)
                }
                .padding(.leading)
            }
            .padding(.bottom, 30)
        }
    }
}

struct AppBarView: View{
    var body: some View{
        HStack{
            Button(action: {}){
                Text("...")
            }
        }
    }
}

struct TagLineView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150)
            .ignoresSafeArea()
    }
}

struct SearchView: View {
    @State private var search: String = ""
    var body: some View {
        HStack{
            HStack {
                TextField("Search product", text: $search)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct CategoryView: View {
    let isActive: Bool
    let text: String
    var body: some View {
        VStack{
            Text(text)
                .font(.system(size:18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color(.white):Color.black.opacity(0.5))
            
            if (isActive){
                Color(.white)
                    .frame(width:15, height:2)
                    .clipShape(Capsule())
            }
        }
    }
}



struct ProductCardView: View {
    let image: Image
    var body: some View {
        VStack{
            image
                .resizable()
                .frame(width: 210,height: 200)
                .cornerRadius(20)
                    Text("Nutritious")
                        .fontWeight(.light)
                        .font(.title3)
                        .padding(.trailing,120)
            
                    Text("Radiant Essence Treatment Lotion")
                        .font(.subheadline)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing,100)
                        .lineLimit(2)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(width:260)
            
            HStack(spacing:2){
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Image(systemName: "star.fill")
                        .foregroundColor(.black)
                }
                Spacer()
                Text("$42.00")
                    .font(.title3)
                    .fontWeight(.bold)
            }
        }
        .frame(width:210)
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        
    }
}

struct homeScreen_Previews: PreviewProvider {
    static var previews: some View {
        homeScreen()
    }
}
