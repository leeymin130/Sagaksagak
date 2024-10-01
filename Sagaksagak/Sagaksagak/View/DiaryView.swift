//
//  DiaryView.swift
//  Sagaksagak
//
//  Created by yoomin on 9/18/24.
//

import SwiftUI

struct DiaryView: View {
    var diary: Diary
    
    @State private var showAlert = false
    
    var body: some View {
        VStack(alignment: .leading) {
//            Divider()
            ScrollView{
                HStack {
                    Spacer()
                    Menu {
                        Button(action: {
                            
                        }) {
                            Label("수정", systemImage: "pencil")
                        }
                        Button(action: {
                            
                        }) {
                            Label("즐겨찾기", systemImage: "heart")
                        }
                        Button(role: .destructive, action: {
                            showAlert = true
                        }) {
                            Label("삭제", systemImage: "trash")
                        }
                        
                        
                    } label: {
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                    }
                    .tint(.indigo)
                }
                .padding(.trailing, 16)
                
                VStack(spacing: 30){
                    Image(diary.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    VStack(alignment: .leading, spacing: 30){
                        
                        Text("STAMP \(diary.count).")
                            .bold()
                            .font(.title3)
                        Text("\(diary.title)")
                            .bold()
                            .font(.title)
                        Text("\(diary.comment)")
                        Text("\(diary.date)")
                            .bold()
                            .font(.callout)
                        Divider()
                    }
                    .padding(.leading, 16)
                }
            }
        }
    }
    
    
}

//#Preview {
//    DiaryView(diary: Diary(imageName: "d01", title: "지우개도장", comment: "지우개도장을 만들었습니다.", board: true, date: Date(), count: 0, favorite: false, isHidden: false))
//}

// 프리뷰에서 네비게이션바를 볼 수 있다
struct DiaryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DiaryView(diary: Diary(imageName: "d01", title: "지우개도장", comment: "지우개도장을 만들었습니다.", board: true, date: Date(), count: 0, favorite: false, isHidden: false))
        }
    }
}
