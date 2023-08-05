//
//  SwiftUIView.swift
//  a
//
//  Created by KWOK LAM on 8/2/23.
//

import SwiftUI

struct TestView: View {
    @State private var shouldScrollToBottom = false
    @State private var shouldScrollToTop = false
    let scrollTime: Double = 10000.0
    
    private func scrollToBottom(with scrollViewProxy: ScrollViewProxy) {
        withAnimation(.easeInOut(duration: scrollTime)) {
            scrollViewProxy.scrollTo("Bottom", anchor: .bottom)
        }
    }

    private func scrollToTop(with scrollViewProxy: ScrollViewProxy) {
        withAnimation(.easeInOut(duration: scrollTime)) {
            scrollViewProxy.scrollTo("Top", anchor: .top)
        }
    }
    var body: some View {
        ScrollViewReader { scrollViewProxy in
            ScrollView {
                VStack(spacing: 10) {
                    Text("title")
                        .id("Top")
                    Button("Scroll to Bottom") {
                        scrollToBottom(with: scrollViewProxy)
                    }
                    .padding()
                    
                    ForEach(0 ..< 5) { item in
                        Image("1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .id(item) // Add unique ID for each image
                        Text("Product Name")
                        Text("other")
                    }
                    Button("Scroll to Top") {
                        scrollToTop(with: scrollViewProxy)
                    }
                    .padding()
                    
                    Color.clear
                        .frame(height: 1)
                        .id("Bottom") // Anchor element at the bottom
                }
                .padding()
                .onChange(of: shouldScrollToTop) { newValue in
                    if newValue {
                        scrollToTop(with: scrollViewProxy)
                        shouldScrollToTop = false
                    }
                }
                .onAppear {
                    shouldScrollToBottom = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        scrollToBottom(with: scrollViewProxy)
            }
                }
            }
        }
    }
}


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
