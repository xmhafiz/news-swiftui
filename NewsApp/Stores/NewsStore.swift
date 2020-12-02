//
//  NewsStore.swift
//  NewsApp
//
//  Created by Hafiz on 02/12/2020.
//

import Foundation

struct NewsStore {
    static let shared = NewsStore()
    
    func getAll() -> [News]{
        let description = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt."
        return [
            News(id: UUID().uuidString, title: "Lorem Ipsum", description: description, date: "December 3, 2020", imageName: "image-1"),
            News(id: UUID().uuidString, title: "Consectetur adipiscing elit", description: description, date: "December 4, 2020", imageName: "image-2"),
            News(id: UUID().uuidString, title: "Sed do eiusmod", description: description, date: "December 5, 2020", imageName: "image-3"),
            News(id: UUID().uuidString, title: "Lorem Ipsum dolor sit amet", description: description, date: "December 12, 2020", imageName: "image-4"),
            News(id: UUID().uuidString, title: "Excepteur sint", description: description, date: "December 30, 2020", imageName: "image-5"),
            News(id: UUID().uuidString, title: "Lorem Ipsum", description: description, date: "December 3, 2020", imageName: "image-6"),
            News(id: UUID().uuidString, title: "Consectetur adipiscing elit", description: description, date: "December 4, 2020", imageName: "image-7"),
            News(id: UUID().uuidString, title: "Sed do eiusmod", description: description, date: "December 5, 2020", imageName: "image-8"),
            News(id: UUID().uuidString, title: "Lorem Ipsum dolor sit amet", description: description, date: "December 12, 2020", imageName: "image-9"),
            News(id: UUID().uuidString, title: "Excepteur sint", description: description, date: "December 30, 2020", imageName: "image-10"),
            News(id: UUID().uuidString, title: "Lorem Ipsum", description: description, date: "December 3, 2020", imageName: "image-11"),
            News(id: UUID().uuidString, title: "Consectetur adipiscing elit", description: description, date: "December 4, 2020", imageName: "image-12")
        ]
    }
}
