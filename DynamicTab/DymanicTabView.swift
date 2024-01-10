//
//  DymanicTabView.swift
//  DynamicTab
//
//  Created by SwiftieDev on 10/01/2024.
//  MARK: SwiftieDev

import SwiftUI

struct DymanicTabView: View {
    @State private var selectedTab = 1
    @State private var indicatorOffset: CGFloat = -3.5
    
    init() {
        _selectedTab = State(initialValue: 0)
        _indicatorOffset = State(initialValue: UIScreen.main.bounds.width / -3)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                
                    Text("Dymanic \nTab Animation")
                        .foregroundColor(.gray)
                        .font(.system(size: 40))
                        .bold()
         
                VStack {
                    HStack(spacing: 10) {
                        Text("Pomodoro")
                            .foregroundColor(selectedTab == 0 ? .white : .gray)
                            .onTapGesture {
                                selectedTab = 0
                                indicatorOffset = UIScreen.main.bounds.width / -3
                            }
                        Text("Short break")
                            .foregroundColor(selectedTab == 1 ? .white : .gray)
                            .onTapGesture {
                                selectedTab = 1
                                indicatorOffset = 1
                            }
                        Text("Long break")
                            .foregroundColor(selectedTab == 2 ? .white : .gray)
                            .onTapGesture {
                                selectedTab = 2
                                indicatorOffset = UIScreen.main.bounds.width / 3
                            }
                    }
                    .font(.title2)
                    .bold()
                    .padding()
                    
                    
                    Rectangle()
                        .fill(Color(.white))
                        .frame(width: UIScreen.main.bounds.width / 6, height: 3)
                        .offset(x: indicatorOffset, y: 0)
                    
                    TabView(selection: $selectedTab) {
                        WorkTimerView()
                            .tag(0)
                        
                        ShortTimerView()
                            .tag(1)
                        
                        LongTimerView()
                            .tag(2)
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                }
            }
        }
        .navigationBarHidden(true)
    }
}


#Preview {
    DymanicTabView()
}


struct WorkTimerView: View {
    var body: some View {
        ZStack {
            
        }
    }
}

struct ShortTimerView: View {
    var body: some View {
        ZStack {
            
        }
    }
}

struct LongTimerView: View {
    var body: some View {
        ZStack {
            
        }
    }
}
