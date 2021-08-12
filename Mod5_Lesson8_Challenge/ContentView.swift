//
//  ContentView.swift
//  Mod5_Lesson8_Challenge
//
//  Created by Brian Kissler on 8/11/21.
//

import SwiftUI


class myPick: ObservableObject {
    
    var pick = 1
    
    
    
}

struct ContentView: View {
    
    @ObservedObject var Pick = myPick()
    
    @State private var viewSelection: Int?
    @State private var viewIndex = 1
    
    var body: some View {
        NavigationView(content: {
            
            VStack{
                
                Picker(selection: $viewIndex, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {

                    ForEach((1...10), id: \.self){id in

                        Text(String(id)).tag(id)

                    }
                }

                Button("Go to view \(viewIndex)") {
                    viewSelection = viewIndex
                }

                ForEach((0...10), id: \.self) { index in
                    NavigationLink(
                        destination: ChildView(ParentPick: $viewSelection),
                        tag: index,
                        selection: $viewSelection,
                    label: {})
                }
                    
                
            }
            
       
       })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
