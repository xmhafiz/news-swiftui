//
//  NewsView.swift
//  NewsApp
//
//  Created by Hafiz on 02/12/2020.
//

import SwiftUI

struct NewsView: View {
    let newsList = NewsStore.shared.getAll()
    var body: some View {
        NavigationView {
            List {
                ForEach (newsList) { row in
                    NewsRowView(news: row)
                }
            }
            .navigationBarTitle("News")
        }
    }
}

struct NewsRowView: View {
    let news: News
    var body: some View {
        HStack (alignment: .top, spacing: 16.0) {
            Image(news.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .cornerRadius(8.0)
                
            VStack (alignment: .leading, spacing: 4.0, content: {
                Text(news.title).font(.headline)
                Text(news.description).lineLimit(2).font(.subheadline)
                Text(news.date)
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .medium, design: .default))
            })
        }
        .padding(8.0)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
