//
//  MultiplyView.swift
//  MentalMath-SwiftUI
//
//  Created by julie rhee on 2021/10/20.
//

import SwiftUI

public var bool_mul = false
public var answer_mul: Int = -1


struct MultiplyView: View {

    @State var randomInt1 : Int
    
    @State var randomInt2 : Int
    
    @State private var string = "0"
    
    @State private var showSheet = false
    @State private var showResult = false
    
    
    init(){
        
        theme = Color.red
        
        if(level == 1){
            self.randomInt1 = Int.random(in: 1..<3)
            self.randomInt2 = Int.random(in: 1..<9)
        }
        
        else if(level == 2){
            self.randomInt1 = Int.random(in: 1..<5)
            self.randomInt2 = Int.random(in: 1..<5)
            
        }
        else if(level == 3){
            self.randomInt1 = Int.random(in: 1..<9)
            self.randomInt2 = Int.random(in: 1..<9)
            
        }
        else if(level == 4){
            self.randomInt1 = Int.random(in: 1..<12)
            self.randomInt2 = Int.random(in: 1..<12)
            
        }
        else if(level == 5){
            self.randomInt1 = Int.random(in: 1..<20)
            self.randomInt2 = Int.random(in: 1..<20)
            
        }
        
        else{
            self.randomInt1 = Int.random(in: 1..<30)
            self.randomInt2 = Int.random(in: 1..<30)
        }
        
        
    }
        
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [.red, .white], startPoint: .topLeading, endPoint: .bottomLeading)
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
                                .fill(Color.red)
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
                    
                    
                    Text(String(randomInt1) + " × " + String(randomInt2))
                        .font(.system(size: 45, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.trailing, 50)
                        .padding(.top, 40)
                    
                    
                }.padding([.leading, .trailing])
                
                VStack {
                        HStack {
                            Button(action: {
                                
                                if(level == 1){
                                    self.randomInt1 = Int.random(in: 1..<3)
                                    self.randomInt2 = Int.random(in: 1..<9)
                                }
                                
                                else if(level == 2){
                                    self.randomInt1 = Int.random(in: 1..<5)
                                    self.randomInt2 = Int.random(in: 1..<5)
                                    
                                }
                                else if(level == 3){
                                    self.randomInt1 = Int.random(in: 1..<9)
                                    self.randomInt2 = Int.random(in: 1..<9)
                                    
                                }
                                else if(level == 4){
                                    self.randomInt1 = Int.random(in: 1..<12)
                                    self.randomInt2 = Int.random(in: 1..<12)
                                    
                                }
                                else if(level == 5){
                                    self.randomInt1 = Int.random(in: 1..<20)
                                    self.randomInt2 = Int.random(in: 1..<20)
                                    
                                }
                                
                                else{
                                    self.randomInt1 = Int.random(in: 1..<30)
                                    self.randomInt2 = Int.random(in: 1..<30)
                                }

                            }) {
                            Text("Skip")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(20)
                                .font(.body)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.red)
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
                    answer_mul = randomInt1 * randomInt2
                    if(answer_mul == Int(string)){
                        bool_mul = true
                    }
                    
                }) {
                    Text("Submit")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.red)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.red, lineWidth: 5)
                        )
                }.fullScreenCover(isPresented: $showResult) {
                    MultiplyResultView()
                }
                
                Spacer()
                
            }
        }
        
    }
}

struct MultiplyView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplyView()
}
}

