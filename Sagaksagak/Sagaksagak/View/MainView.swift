//
//  MainView.swift
//  Sagaksagak
//
//  Created by yoomin on 9/5/24.
//

import SwiftUI

struct MainView: View {
    var diary: Diary = Diary(imageName: "d01", title: "지우개도장", comment: "지우개도장을 만들었습니다.", board: true, date: Date(), count: 0, favorite: false, isHidden: false)
    
    @State var selectedBoard = "Diary"
    var boards = ["Diary", "Ref"]
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
            VStack {
                Picker("Choose a board", selection: $selectedBoard) {
                    ForEach(boards, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                .frame(width: 135, height: 32)
                .cornerRadius(9)
                
                Divider()
                
                if selectedBoard == "Diary" {
                    ScrollView {
                        LazyVGrid(columns: layout, spacing: 16) {
                            ZStack {
                                // 선택버튼 활성화 체크
                                // 선택버튼 비활성화-네비게이션 버튼 -> DiaryView()
                                // 선택버튼 활성화-다중선택
                                Image("d01")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 107, height: 107)
                                    .clipped()
                                    .cornerRadius(5)
                            }
                        }
                    }
                } else {
                    ScrollView {
                        LazyVGrid(columns: layout, spacing: 16) {
                            ZStack {
                                Image("r01")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 107, height: 107)
                                    .clipped()
                                    .cornerRadius(5)
                            }
            
                            
                        }
                    }
                }
                
            }
        }
    }


#Preview {
    ContentView()
}
