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
    
    var body: some View {
        NavigationView(content: {
            
            VStack{
                
                Picker(selection: $Pick.pick, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {

                    ForEach((1...10), id: \.self){id in

                        Text(String(id)).tag(id)

                    }
                }


                 NavigationLink(
                    destination: ChildView(ParentPick: $Pick.pick)
                        .navigationBarBackButtonHidden(true),
                    label: {
                        Text("Go To View \(Pick.pick)")
                    })
                    
                
            }
            
       
       })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
