//
//  SubtractResultView.swift
//  MentalMath-SwiftUI
//
//  Created by julie rhee on 2021/10/21.
//

import SwiftUI

struct SubtractResultView: View {
    
    @State private var showNext = false
    @State private var showHome = false
    
    var body: some View {
        ZStack{
            if(bool_sub){
                LinearGradient(colors: [.green, .white], startPoint: .topLeading, endPoint: .bottomLeading)
                    .edgesIgnoringSafeArea(.all)
                
            }
            else{
                LinearGradient(colors: [.pink, .white], startPoint: .topLeading, endPoint: .bottomLeading)
                    .edgesIgnoringSafeArea(.all)
            }
            
            VStack{
                
                Spacer()
                
                
                Button(action: {
                    self.showHome = true
                    bool_sub = false
                }) {
                Text("Home")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(20)
                    .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 5)
                    )
                }
                .fullScreenCover(isPresented: $showHome) {
                    ContentView()
                }
                .padding(.horizontal, 20)
                    .padding(.top, 20)
                
                Spacer()
                
                
                if(bool_sub){
                    
                    Text("Your answer is correct")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(10)
                    
                    Text("Great Job!")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.bottom, 40)
                    
                    Image(systemName: "hand.thumbsup")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .foregroundColor(Color(.white))
                    
                }
                
                else{
                    VStack{
                        
                        Text("Your answer is incorrect")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(10)
                                
                        Text("The correct answer was :")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                                
                        Text(String(answer_sub))
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.bottom, 40)
                        
                        Image(systemName: "hand.thumbsdown")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 120)
                            .foregroundColor(Color(.white))
                            
                    }
                    
                }
                
                Spacer()
                
                if(bool_sub){
                    
                    Button(action: {
                        self.showNext = true
                        bool_sub = false
                    }) {
                    Text("Next Question")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.green)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 5)
                        )
                    }
                    .fullScreenCover(isPresented: $showNext) {
                        SubtractView()
                    }
                    .padding(.horizontal, 20)
                        .padding(.top, 10)
                    
                }
                
                else{
                    
                    Button(action: {
                        self.showNext = true
                        bool_sub = false
                    }) {
                    Text("Next Question")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.pink)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 5)
                        )
                    }
                    .fullScreenCover(isPresented: $showNext) {
                        SubtractView()
                    }
                    .padding(.horizontal, 20)
                        .padding(.top, 10)
                }
                
                
                Spacer()
    
            }
        }
        
    }
}

struct SubtractResultView_Previews: PreviewProvider {
    static var previews: some View {
        SubtractResultView()
    }
}

