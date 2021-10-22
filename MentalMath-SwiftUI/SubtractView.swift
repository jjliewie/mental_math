//
//  SubtractView.swift
//  MentalMath-SwiftUI
//
//  Created by julie rhee on 2021/10/20.
//

import SwiftUI

public var bool_sub = false
public var answer_sub: Int = -1


struct SubtractView: View {

    @State var randomInt1 : Int
    
    @State var randomInt2 : Int
    
    @State private var string = "0"
    
    @State private var showSheet = false
    @State private var showResult = false
    
    
    init(){
        
        theme = Color.blue
        
        if(level == 1){
            self.randomInt1 = Int.random(in: 5..<10)
            self.randomInt2 = Int.random(in: 1..<5)
        }
        
        else if(level == 2){
            self.randomInt1 = Int.random(in: 10..<15)
            self.randomInt2 = Int.random(in: 5..<10)
            
        }
        else if(level == 3){
            self.randomInt1 = Int.random(in: 20..<30)
            self.randomInt2 = Int.random(in: 10..<20)
            
        }
        else if(level == 4){
            self.randomInt1 = Int.random(in: 30..<60)
            self.randomInt2 = Int.random(in: 10..<30)
            
        }
        else if(level == 5){
            self.randomInt1 = Int.random(in: 40..<70)
            self.randomInt2 = Int.random(in: 10..<40)
            
        }
        
        else{
            self.randomInt1 = Int.random(in: 50..<99)
            self.randomInt2 = Int.random(in: 10..<50)
        }
        
        
    }
        
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            
            VStack{

                HStack {
                    
                    Button(action: {
                        self.showSheet = true
                        
                    }) {
                    Text("Back")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.blue)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 3)
                        )
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    .fullScreenCover(isPresented: $showSheet) {
                        ContentView()
                            
                    }
                    
                    
                    Spacer()
                    
                    
                    Text(String(randomInt1) + " - " + String(randomInt2))
                        .font(.system(size: 45, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.trailing, 50)
                        .padding(.top, 40)
                    
                    
                }.padding([.leading, .trailing])
                
                VStack {
                        HStack {
                            Button(action: {
                                if(level == 1){
                                    self.randomInt1 = Int.random(in: 5..<10)
                                    self.randomInt2 = Int.random(in: 1..<5)
                                }
                                
                                else if(level == 2){
                                    self.randomInt1 = Int.random(in: 10..<15)
                                    self.randomInt2 = Int.random(in: 5..<10)
                                    
                                }
                                else if(level == 3){
                                    self.randomInt1 = Int.random(in: 20..<30)
                                    self.randomInt2 = Int.random(in: 10..<20)
                                    
                                }
                                else if(level == 4){
                                    self.randomInt1 = Int.random(in: 30..<60)
                                    self.randomInt2 = Int.random(in: 10..<30)
                                    
                                }
                                else if(level == 5){
                                    self.randomInt1 = Int.random(in: 40..<70)
                                    self.randomInt2 = Int.random(in: 10..<40)
                                    
                                }
                                
                                else{
                                    self.randomInt1 = Int.random(in: 50..<99)
                                    self.randomInt2 = Int.random(in: 10..<50)
                                }
                            }) {
                            Text("Skip")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(20)
                                .font(.body)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.blue)
                                )
                                .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 3)
                                )
                            }
                            .padding(.leading, 8)
                            Spacer()
                            Text(string)
                                .font(.system(size: 50, weight: .bold))
                                .foregroundColor(.white)
                                .padding(.horizontal, 35)
                        }.padding([.leading, .trailing])
                        KeyPad(string: $string)
                            .padding(20)
                            .padding(.horizontal, 5)
                    }
                    .font(.largeTitle)
                        .padding(15)
                
                Button(action: {
                    self.showResult = true
                    answer_sub = randomInt1 - randomInt2
                    if(answer_sub == Int(string)){
                        bool_sub = true
                    }
                    
                }) {
                    Text("Submit")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.blue)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.blue, lineWidth: 5)
                        )
                }.fullScreenCover(isPresented: $showResult) {
                    SubtractResultView()
                }
                
                Spacer()
                
            }
        }
        
    }
}

struct SubtractView_Previews: PreviewProvider {
    static var previews: some View {
        SubtractView()
}
}
