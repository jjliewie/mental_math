//
//  LevelView.swift
//  MentalMath-SwiftUI
//
//  Created by julie rhee on 2021/10/21.
//

import SwiftUI

struct LevelView: View {
    
    @State private var showHome = false
    
    var body: some View {
        VStack{
            
            Button(action: {
                self.showHome = true
            }) {
            Text("Back")
                .fontWeight(.bold)
                .foregroundColor(.orange)
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
            }
            .padding(30)
            .padding(.bottom, 50)
            
            
            
            HStack{
                
                Spacer()
                Button(action: {
                    level = 1
                    self.showHome = true
                }) {
                Text("Level: 1")
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
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
                }
                .padding(30)
                .padding(.bottom, 50)
                
                Spacer()
                
                Button(action: {
                    level = 2
                    self.showHome = true
                }) {
                Text("Level: 2")
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
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
                }
                .padding(20)
                .padding(.bottom, 50)
                
                Spacer()
            }
            
            HStack{
                
                Spacer()
                Button(action: {
                    level = 3
                    self.showHome = true
                }) {
                Text("Level: 3")
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
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
                }
                .padding(30)
                .padding(.bottom, 50)
                
                Spacer()
                
                Button(action: {
                    level = 4
                    self.showHome = true
                }) {
                Text("Level: 4")
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
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
                }
                .padding(20)
                .padding(.bottom, 50)
                
                Spacer()
            }
            
            HStack{
                
                Spacer()
                Button(action: {
                    level = 5
                    self.showHome = true
                }) {
                Text("Level: 5")
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
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
                }
                .padding(30)
                .padding(.bottom, 50)
                
                Spacer()
                
                Button(action: {
                    level = 6
                    self.showHome = true
                }) {
                Text("Level: 6")
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
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
                }
                .padding(20)
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView()
    }
}
