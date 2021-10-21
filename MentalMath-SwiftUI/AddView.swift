//
//  AddView.swift
//  MentalMath-SwiftUI
//
//  Created by julie rhee on 2021/10/20.
//

import SwiftUI

public var bool_add = false
public var answer_add: Int = -1

struct KeyPadButton: View {
    var key: String

    var body: some View {
        Button(action: { self.action(self.key) }) {
            Color.clear
                .overlay(Text(key))
                .foregroundColor(.white)
                .background(
                    RoundedRectangle(cornerRadius: 25)
                    .fill(Color.purple)
                )
        }
        .padding(5)
    }

    enum ActionKey: EnvironmentKey {
        static var defaultValue: (String) -> Void { { _ in } }
    }

    @Environment(\.keyPadButtonAction) var action: (String) -> Void
}

extension EnvironmentValues {
    var keyPadButtonAction: (String) -> Void {
        get { self[KeyPadButton.ActionKey.self] }
        set { self[KeyPadButton.ActionKey.self] = newValue }
    }
}

struct KeyPadRow: View {
    var keys: [String]

    var body: some View {
        HStack {
            ForEach(keys, id: \.self) { key in
                KeyPadButton(key: key)
            }
        }
    }
}


struct KeyPad: View {
    @Binding var string: String

    var body: some View {
        VStack {
            KeyPadRow(keys: ["1", "2", "3"])
            KeyPadRow(keys: ["4", "5", "6"])
            KeyPadRow(keys: ["7", "8", "9"])
            KeyPadRow(keys: ["0", "⌫", "ⓧ"])
        }.environment(\.keyPadButtonAction, self.keyWasPressed(_:))
    }

    private func keyWasPressed(_ key: String) {
        switch key {
        case "ⓧ":
            string = "0"
        case "⌫":
            string.removeLast()
            if string.isEmpty { string = "0" }
        case _ where string == "0": string = key
        default: string += key
        }
    }
}

extension View {
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
    }
}


struct AddView: View {

    @State var randomInt1 : Int
    
    @State var randomInt2 : Int
    
    @State private var string = "0"
    
    @State private var showSheet = false
    @State private var showResult = false
    
    
    init(){
        
        if(level == 1){
            self.randomInt1 = Int.random(in: 1..<10)
            self.randomInt2 = Int.random(in: 1..<10)
        }
        
        else if(level == 2){
            self.randomInt1 = Int.random(in: 10..<15)
            self.randomInt2 = Int.random(in: 5..<15)
            
        }
        else if(level == 3){
            self.randomInt1 = Int.random(in: 10..<20)
            self.randomInt2 = Int.random(in: 10..<20)
            
        }
        else if(level == 4){
            self.randomInt1 = Int.random(in: 20..<40)
            self.randomInt2 = Int.random(in: 20..<40)
            
        }
        else{
            self.randomInt1 = Int.random(in: 25..<50)
            self.randomInt2 = Int.random(in: 25..<50)
            
        }
        
        
    }
        
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [.purple, .white], startPoint: .topLeading, endPoint: .bottomLeading)
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
                                .fill(Color.purple)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 3)
                        )
                    }
                    .fullScreenCover(isPresented: $showSheet) {
                        ContentView()
                    }
                    .padding(.horizontal, 20)
                        .padding(.top, 20)
                    
                    Spacer()
                    
                    Text(String(randomInt1) + " + " + String(randomInt2))
                        .font(.system(size: 55, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 40)
                        .padding(.top, 40)
                    
                    
                }.padding([.leading, .trailing])
                
                VStack {
                        HStack {
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
                    answer_add = randomInt1 + randomInt2
                    if(answer_add == Int(string)){
                        bool_add = true
                    }
                    
                }) {
                    Text("Submit")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.purple)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.purple, lineWidth: 5)
                        )
                }.fullScreenCover(isPresented: $showResult) {
                    AddResultView()
                }
                
                Spacer()
                
            }
        }
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
}
}
