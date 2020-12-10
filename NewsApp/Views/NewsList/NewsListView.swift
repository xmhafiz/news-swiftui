//
//  NewsListView.swift
//  NewsApp
//
//  Created by Hafiz on 02/12/2020.
//

import SwiftUI

struct NewsListView: View {
    let newsList = NewsStore.shared.getAll()
    var body: some View {
        NavigationView {
            List {
                Section(header: HeaderView(text: "Headline")) {
                    let headline = newsList.last!
                    ZStack {
                        NavigationLink(destination: NewsView(news: headline)) {
                            //
                        }
                        .hidden()
                        NewsHeadlineView(news: headline)
                    }
                }
                Section(header: HeaderView(text: "Latest")) {
                    ForEach (newsList) { row in
                        NavigationLink(destination: NewsView(news: row)) {
                            NewsRowView(news: row)
                        }
                    }
                }
            }
            .navigationBarTitle("Home")
        }
        // prevent iPad split view
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NewsRowView: View {
    let news: News
    var body: some View {
        HStack(alignment: .top, spacing: 16.0) {
            Image(news.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .cornerRadius(8.0)
                
            VStack(alignment: .leading, spacing: 4.0, content: {
                Text(news.title).font(.headline).lineLimit(2)
                Text(news.description).lineLimit(2).font(.subheadline)
                Text(news.date)
                    .foregroundColor(.gray)
                    .font(.subheadline)
            })
        }
        .padding(8.0)
    }
}

struct NewsHeadlineView: View {
    let news: News
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(news.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(8.0)
                
            VStack(alignment: .leading, spacing: 8.0, content: {
                Text(news.title).font(.title).lineLimit(2)
                Text(news.date)
                    .foregroundColor(.gray)
                    .font(.subheadline)
                Text(news.description).lineLimit(3).font(.subheadline)
            })
            SocialCountView()
        }
        .padding(8.0)
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}
