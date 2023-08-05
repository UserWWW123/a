//
//  ContentView.swift
//  a
//
//  Created by KWOK LAM on 7/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isFirstPageShown=true
    @State private var time = 0
    private func startTimer(){
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            time += 1
        }
    }
    
    
    var body: some View {
        Group{
            if isFirstPageShown {
                NavigationStack{
                    FirstPage(time: $time)
                        .onAppear{
                            startTimer()
                            DispatchQueue.main.asyncAfter(deadline: . now()+5){
                                isFirstPageShown = false
                            }
                        }
                }
            } else{
                homeScreen()
            }
        }
        
       
    }
}

struct FirstPage:View{
    @Binding var time: Int
    
    var body: some View{
        NavigationStack {
            ZStack {
                Image("1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .zIndex(0)
                
                VStack {
                    Image("1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.accentColor)
                        .zIndex(1)
                        .overlay(
                            VStack{
                                    Text("NUTRITIOUS")
                                        .font(.largeTitle)
                                        .fontWeight(.heavy)
                                        .foregroundColor(Color.white)
                                        .padding(.trailing,150)
                                                                
                                Text("Skin Care")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .padding(.trailing,230)
                                    .padding(.bottom,1)
                                
                                Text("Help your skin flourish")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .padding(.trailing,80)

                                
                                Spacer()
                                
                                Button(action:{}){
                                    NavigationLink(destination: ProductPage()) {
                                        Text("Learn More")
                                           
                                    }
                                        .font(.title)
                                        .tint(Color.gray)
                                        .buttonStyle(.borderedProminent)
                                        .padding(.bottom,100)
                                }
                            }
                                .overlay(
                                    Text("\(time)")
                                        .font(.body)
                                        .fontWeight(.light)
                                        .foregroundColor(Color(red: 255/255, green: 97/255, blue: 131/255))
                                        .background(
                                            Circle()
                                                .foregroundColor(Color(red: 245/255, green: 244/255, blue: 244/255))
                                                .frame(width:30, height: 30.0)
                                        )
                                        .zIndex(2)
                                        .padding(.bottom,700)
                                        .padding(.leading,300)
                                )
                        )
                    
                    Spacer()
                }
            }

        }    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
