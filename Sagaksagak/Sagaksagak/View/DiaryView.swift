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
        NavigationStack {
            VStack{
                Text("DiaryView")
                    .background(Color.red)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Menu {
                        Button(action: {
                            
                        }) {
                        Label("수정", systemImage: "pencil")
                        }
                        Button(action: {
                            
                        }) {
                        Label("즐겨찾기", systemImage: "heart")
                        }
                        Button(action: {
                            
                        }) {
                        Label("삭제", systemImage: "trash")
                        }
                        

                    } label: {
                        Image(systemName: "ellipsis.circle")
                    }
                    .tint(.indigo)
                }
            }
        }
        
    }
}

#Preview {
    DiaryView(diary: Diary(imageName: "d01", title: "지우개도장", comment: "지우개도장을 만들었습니다.", board: true, date: Date(), count: 0, favorite: false, isHidden: false))
}
