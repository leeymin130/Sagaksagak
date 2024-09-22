//
//  DiaryView.swift
//  Sagaksagak
//
//  Created by yoomin on 9/18/24.
//

import SwiftUI

struct DiaryView: View {
    var diary: Diary
    
    var body: some View {
        Text("DiaryView")
    }
}

#Preview {
    DiaryView(diary: Diary(imageName: "d01", title: "지우개도장", comment: "지우개도장을 만들었습니다.", board: true, date: Date(), count: 0, favorite: false, isHidden: false))
}
