//
//  Comment.swift
//  NewsApp
//
//  Created by Hafiz on 19/12/2020.
//

import Foundation

struct Comment: Identifiable {
    var id = UUID()
    let userName: String
    let comment: String
    let dateString: String
    let personImageName: String
}
