//
//  CommentsStore.swift
//  NewsApp
//
//  Created by Hafiz on 19/12/2020.
//

import Foundation

struct CommentsStore {
    static let shared = CommentsStore()
    
    func getAll() -> [Comment] {
        return [
            Comment(userName: "Ejen Ali", comment: "Hello guys, this M1 chips is it really powerful? anyone has try put it into aeroplane. Can it works? 🤔", dateString: "July 23, 10 am", personImageName: "person-1"),
            Comment(userName: "Robert Jc", comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", dateString: "July 23, 11 am", personImageName: "person-2"),
            Comment(userName: "Jerico", comment: "That's right! 🔥", dateString: "July 23, 12 pm", personImageName: "person-3"),
            Comment(userName: "Ejen Alisha", comment: "Sed ut perspiciatis unde omnis iste", dateString: "July 23, 10 am", personImageName: "person-4"),
            Comment(userName: "Dr. Kameel", comment: "Awesome 🎉", dateString: "July 23, 10 am", personImageName: "person-5"),
            Comment(userName: "John Smith", comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", dateString: "July 23, 10 am", personImageName: "person-6"),
            Comment(userName: "Roberto Carlos", comment: "Lorem ipsum dolor sit amet.", dateString: "July 23, 10 am", personImageName: "person-7"),
            Comment(userName: "Samsudeen Areeq", comment: "Hi. But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system,", dateString: "July 23, 10 am", personImageName: "person-8"),
            Comment(userName: "Senior Developer", comment: "Hello guys, what news is all about", dateString: "July 23, 10 am", personImageName: "person-9"),
            Comment(userName: "Ramadhan J.", comment: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias", dateString: "July 23, 10 am", personImageName: "person-10"),
            Comment(userName: "Ejen Ali", comment: "Hello guys, this M1 chips is it really powerful? anyone has try put it into aeroplane. Can it works?", dateString: "July 23, 10 am", personImageName: "person-1"),
            Comment(userName: "Robert Jc", comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", dateString: "July 23, 11 am", personImageName: "person-2"),
            Comment(userName: "Jerico", comment: "That's right!", dateString: "July 23, 12 pm", personImageName: "person-3"),
            Comment(userName: "Ejen Alisha", comment: "Sed ut perspiciatis unde omnis iste", dateString: "July 23, 10 am", personImageName: "person-4"),
            Comment(userName: "Dr. Kameel", comment: "Awesome 🎉", dateString: "July 23, 10 am", personImageName: "person-5"),
            Comment(userName: "John Smith", comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", dateString: "July 23, 10 am", personImageName: "person-6"),
            Comment(userName: "Roberto Carlos", comment: "Lorem ipsum dolor sit amet.", dateString: "July 23, 10 am", personImageName: "person-7"),
            Comment(userName: "Samsudeen Areeq", comment: "Hi. But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system,", dateString: "July 23, 10 am", personImageName: "person-9"),
            Comment(userName: "Senior Developer", comment: "Hello guys, what news is all about", dateString: "July 23, 10 am", personImageName: "person-10"),
            Comment(userName: "Ramadhan J.", comment: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias", dateString: "July 23, 10 am", personImageName: "person-1"),
        ]
    }
}
