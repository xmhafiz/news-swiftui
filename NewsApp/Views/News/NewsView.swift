//
//  NewsView.swift
//  NewsApp
//
//  Created by Hafiz on 03/12/2020.
//

import SwiftUI

struct NewsView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    
    let news: News
    var body: some View {
        // use GeometryReader to get current frame
        GeometryReader { geo in
            ScrollView(.vertical, showsIndicators: false, content: {
                Image(news.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width, height: geo.size.width)
                    .clipped()
                VStack(alignment: .leading, spacing: 8.0, content: {
                    Text(news.title).font(.largeTitle).lineLimit(4)
                    Text(news.date + " by \(news.author)")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .medium, design: .default))
                    Text("New York - " + news.description)
                        .font(.subheadline)
                    SocialCountView().padding(.top, 16)
                })
                .padding(24)
            })
            .navigationBarTitle("News", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            // add custom back button and share button
            .navigationBarItems(leading: Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Image(systemName: "arrow.left")
            }, trailing:
                Button(action: {
                    print("Share button pressed")
                }) {
                    Image(systemName: "square.and.arrow.up")
                }
            )
            // enable swipe back
            .gesture(DragGesture().updating($dragOffset, body: { (value, state, transaction) in
                if (value.startLocation.x < 20 && value.translation.width > 100) {
                    self.mode.wrappedValue.dismiss()
                }
            }))
        }
        .padding(0)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        let news = NewsStore.shared.getAll().first!
        NewsView(news: news)
    }
}
