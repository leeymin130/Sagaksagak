//
//  Diary.swift
//  Sagaksagak
//
//  Created by yoomin on 8/22/24.
//

import SwiftUI

// id,imageName,title,comment,board,date,count,favorite,isHidden
struct Diary: Identifiable {
    let id = UUID().uuidString
    var imageName: String
    var title: String
    var comment: String
    var board: Bool
    let date: Date
    let count: Int
    var favorite: Bool
    var isHidden: Bool
}


