//
//  ContentView.swift
//  MentalMath-SwiftUI
//
//  Created by julie rhee on 2021/10/20.
//

import SwiftUI

public var level: Int = 1
public var levels: Array = ["1"]

struct ContentView: View {
    
    @State private var showSheet = false
    @State private var showLevel = false

    
    var body: some View {
            ZStack{
                
                LinearGradient(colors: [.yellow, .white], startPoint: .topLeading, endPoint: .bottomLeading)
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack{
                    
                    Spacer()
                    
                    Button(action: {
                        self.showLevel = true
                    }) {
                    Text("Level: " + String(level))
                        .fontWeight(.bold)
                        .font(.title)
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
                    .fullScreenCover(isPresented: $showLevel) {
                        LevelView()
                    }
                    .padding(30)
                    .padding(.bottom, 50)
                    
                    VStack{
                        
                        Image(systemName: "moon.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                        
                    }
                    
                    Spacer()
                    
                    HStack{

                            Spacer()
                        
                        Button(action: {
                            showSheet = true
                        }) {
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25, weight: .bold))
                                    .padding()
                                    .frame(width: 80, height: 80)
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.orange)
                                    )
                        }
                        .fullScreenCover(isPresented: $showSheet, content: {
                            AddView()
                                .animation(.easeInOut)
                                .transition(.move(edge: .bottom))
                        })
                            
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "minus")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25, weight: .bold))
                                    .padding()
                                    .frame(width: 80, height: 80)
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.orange)
                                    )
                        }

                            
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "multiply")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25, weight: .bold))
                                    .padding()
                                    .frame(width: 80, height: 80)
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.orange)
                                    )
                        }
                            
                            
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "divide")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25, weight: .bold))
                                    .padding()
                                    .frame(width: 80, height: 80)
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.orange)
                                    )
                        }
                            
                            Spacer()
                            
                        
                    }
                
                    Spacer()
                }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
