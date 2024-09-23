//
//  ContentView.swift
//  Sagaksagak
//
//  Created by yoomin on 8/15/24.
//

import SwiftUI

struct ContentView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "KCC-eunyoung-Regular", size: 40)!]
    }
    
    @State private var selectDiary: Bool = false  // 선택버튼 
    @State private var selectedOption: String? = nil  // 필터옵션
    
    var body: some View {
        NavigationView {
            MainView()
//                .navigationTitle("from. Triangle")
                .navigationTitle("사각사각")
                .toolbar {
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        Button(action: {
                            selectDiary.toggle()
                            // 다중 선택버튼 활성화 및 상단 툴바아이템 변경됨 -> 취소버튼만 있게!
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color.indigo, lineWidth: 1.5)
                                    .frame(width: 42, height: 22)
                                Text("선택")
                                    .font(.caption2)
                                    .foregroundColor(.indigo)
                                    .bold()
                                    .padding()
                            }
                        })
                        
                        Menu {
                            Button(action: {
                            }) {
                                Label("목록으로 보기", systemImage: "list.bullet")
                            }
                                                        
                            // 필터-서브 메뉴 추가
                            Menu {
                                Button(action: {
                                    print("모든 항목 selected")
                                    selectedOption = "모든 항목"
                                }){
                                    Label("모든 항목", systemImage: selectedOption == "모든 항목" ? "checkmark" : "photo.on.rectangle")
                                }
                                Button(action: {
                                    print("즐겨찾기 selected")
                                    selectedOption = "즐겨찾기"
                                }){
                                    Label("즐겨찾기", systemImage: selectedOption == "즐겨찾기" ? "checkmark" : " ")
                                }
                                Button(action: {
                                    print("가려진 항목 selected")
                                    selectedOption = "가려진 항목"
                                }){
                                    Label("가려진 항목", systemImage: selectedOption == "가려진 항목" ? "checkmark" : " ")
                                }
                                
                            } label: {
                                Label("필터", systemImage: "line.3.horizontal.decrease.circle")
                            }
                            
                            Button(action: {
                            }) {
                                Label("다음으로 정렬", systemImage: "arrow.up.arrow.down")
                            }
                        } label: {
                            Image(systemName: "ellipsis.circle")
                        }
                        .tint(.indigo)
                        
                    }
                    
                    ToolbarItemGroup(placement: .bottomBar) {
                        HStack {
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "square.and.pencil")
                            })
                            .tint(.clear)
                            
                            // 현재 페이지(Diary/Ref)의 개수 \(count)개의 기록
                            Text("0개의 기록")
                                .font(.footnote)
                                .bold()
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .center)
//                                                            .background(Color.red)
                            
                            NavigationLink(destination: MakeDiaryView()) {
                                Image(systemName: "square.and.pencil")
                            }
                            .tint(.indigo)
                        }
                        
                    }
                }
        }
        .onAppear {
            // 폰트가 잘 적용되었는지 확인하는 함수
            //            for fontFamily in UIFont.familyNames {
            //                for fontName in UIFont.fontNames(forFamilyName: fontFamily) {
            //                    print(fontName)
            //                }
            //            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
