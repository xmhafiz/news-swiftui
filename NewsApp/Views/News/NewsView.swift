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
                Section(header: HeaderView(text: "Headline")) {
                    let headline = newsList.last!
                    NewsHeadlineView(news: headline)
                }
                Section(header: HeaderView(text: "Latest")) {
                    ForEach (newsList) { row in
                        NewsRowView(news: row)
                    }
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
                .frame(width: 120, height: 120)
                .cornerRadius(8.0)
                
            VStack (alignment: .leading, spacing: 4.0, content: {
                Text(news.title).font(.headline).lineLimit(2)
                Text(news.description).lineLimit(2).font(.subheadline)
                Text(news.date)
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .medium, design: .default))
            })
        }
        .padding(8.0)
    }
}

struct NewsHeadlineView: View {
    let news: News
    var body: some View {
        VStack (spacing: 16.0) {
            Image(news.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(8.0)
                
            VStack (alignment: .leading, spacing: 4.0, content: {
                Text(news.title).font(.title).lineLimit(2)
                Text(news.date)
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .medium, design: .default))
                Text(news.description).lineLimit(2).font(.subheadline)
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
