//
//  LevelView.swift
//  MentalMath-SwiftUI
//
//  Created by julie rhee on 2021/10/21.
//

import SwiftUI

struct LevelView: View {
    
    @State private var showHome = false
    
    @State private var lvl1: Color
    @State private var lvl2: Color
    @State private var lvl3: Color
    @State private var lvl4: Color
    @State private var lvl5: Color
    @State private var lvl6: Color
    
    init(){
        
        if(level == 1){
            self.lvl1 = Color.pink
        }
        else{
            self.lvl1 = Color.orange
        }
        
        if(level == 2){
            self.lvl2 = Color.pink
        }
        else{
            self.lvl2 = Color.orange
        }
        
        if(level == 3){
            self.lvl3 = Color.pink
        }
        else{
            self.lvl3 = Color.orange
        }
        
        if(level == 4){
            self.lvl4 = Color.pink
        }
        else{
            self.lvl4 = Color.orange
        }
        
        if(level == 5){
            self.lvl5 = Color.pink
        }
        else{
            self.lvl5 = Color.orange
        }
        
        if(level == 6){
            self.lvl6 = Color.pink
        }
        else{
            self.lvl6 = Color.orange
        }
    }
    
    var body: some View {
        ZStack{
            
            LinearGradient(colors: [.yellow, .white], startPoint: .topLeading, endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack{
            
                HStack{
                    
                    Spacer()
                    Button(action: {
                        level = 1
                        self.showHome = true
                    }) {
                    Text("Level\n1")
                        .fontWeight(.bold)
                        .foregroundColor(lvl1)
                        .padding()
                        .font(.title)
                        .frame(width: 120, height: 120)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lvl1, lineWidth: 5)
                        )
                    }
                    .fullScreenCover(isPresented: $showHome) {
                        ContentView()
                    }
                    .padding(10)
                    .padding(.bottom, 20)
                    
                    Spacer()
                    
                    Button(action: {
                        level = 2
                        self.showHome = true
                    }) {
                    Text("Level\n2")
                        .fontWeight(.bold)
                        .foregroundColor(lvl2)
                        .padding()
                        .font(.title)
                        .frame(width: 120, height: 120)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lvl2, lineWidth: 5)
                        )
                    }
                    .fullScreenCover(isPresented: $showHome) {
                        ContentView()
                    }
                    .padding(10)
                    .padding(.bottom, 20)
                    
                    Spacer()
                }
                
                HStack{
                    
                    Spacer()
                    Button(action: {
                        level = 3
                        self.showHome = true
                    }) {
                    Text("Level\n3")
                        .fontWeight(.bold)
                        .foregroundColor(lvl3)
                        .padding()
                        .font(.title)
                        .frame(width: 120, height: 120)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lvl3, lineWidth: 5)
                        )
                    }
                    .fullScreenCover(isPresented: $showHome) {
                        ContentView()
                    }
                    .padding(10)
                    .padding(.bottom, 20)
                    
                    Spacer()
                    
                    Button(action: {
                        level = 4
                        self.showHome = true
                    }) {
                    Text("Level\n4")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(lvl4)
                        .padding()
                        .frame(width: 120, height: 120)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lvl4, lineWidth: 5)
                        )
                    }
                    .fullScreenCover(isPresented: $showHome) {
                        ContentView()
                    }
                    .padding(10)
                    .padding(.bottom, 20)
                    
                    Spacer()
                }
                
                HStack{
                    
                    Spacer()
                    Button(action: {
                        level = 5
                        self.showHome = true
                    }) {
                    Text("Level\n5")
                        .fontWeight(.bold)
                        .foregroundColor(lvl5)
                        .padding()
                        .font(.title)
                        .frame(width: 120, height: 120)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lvl5, lineWidth: 5)
                        )
                    }
                    .fullScreenCover(isPresented: $showHome) {
                        ContentView()
                    }
                    .padding(10)
                    .padding(.bottom, 20)
                    
                    Spacer()
                    
                    Button(action: {
                        level = 6
                        self.showHome = true
                    }) {
                    Text("Level\n6")
                        .fontWeight(.bold)
                        .foregroundColor(lvl6)
                        .padding()
                        .font(.title)
                        .frame(width: 120, height: 120)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lvl6, lineWidth: 5)
                        )
                    }
                    .fullScreenCover(isPresented: $showHome) {
                        ContentView()
                    }
                    .padding(10)
                    .padding(.bottom, 20)
                    
                    Spacer()
                }
                
                Button(action: {
                    self.showHome = true
                }) {
                Text("Back")
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
                    .font(.title)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                    )
                    .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.orange, lineWidth: 5)
                    )
                }
                .fullScreenCover(isPresented: $showHome) {
                    ContentView()
                }.padding(.top, 10)
                
            }.padding(25)
        }
        
    }
}

struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView()
    }
}
