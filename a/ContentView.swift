//
//  ContentView.swift
//  a
//
//  Created by KWOK LAM on 7/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Image("1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.accentColor)
                    .overlay(
                        Button("Welcome") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                            .font(.title)
                            .tint(Color.gray)
                            .buttonStyle(.borderedProminent)
                            .padding(.top,500)
                    
                    )
                    .overlay(
                        Text("NUTRITIOUS")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom,650)
                            .padding(.trailing,150)
                    )
                    .overlay(
                    Text("Skin Care")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom,580)
                        .padding(.trailing,230)
                    )
                    .overlay(
                    Text("Help your skin flourish")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom,520)
                    )
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
