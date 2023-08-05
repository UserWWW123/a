//
//  test.swift
//  a
//
//  Created by KWOK LAM on 8/2/23.
//

import SwiftUI
struct ContentView2: View {
    
    var body: some View {
        TabView {
            DetailView()
                .tabItem {
                Label("Home", systemImage: "house")
            }
            
            ContentView3()
                .tabItem{
                Label("Heart", systemImage: "heart")
            }
        }
    }
}

struct DetailView: View {
    @State private var showNavigationBar = false

    var body: some View {
        Text("Detail View")
            .toolbar(showNavigationBar ? .visible : .hidden)
            .onTapGesture {
                withAnimation {
                    showNavigationBar.toggle()
                }
            }
    }
}

struct ContentView3: View {
    var body: some View {
        TabView{
            NavigationStack {
                NavigationLink("Tap Me", destination: DetailView.init)
                    .navigationTitle("Primary View")
            }
            .toolbar(.hidden, for: .tabBar)

        }
    }
}
struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}

struct test: View {
    @State private var selectedCategory: String? = nil
        var body: some View {
            ZStack{
                Color.gray
                    .ignoresSafeArea()
            }        }
    }


struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
