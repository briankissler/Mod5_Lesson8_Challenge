//
//  ChildView.swift
//  Mod5_Lesson8_Challenge
//
//  Created by Brian Kissler on 8/11/21.
//

import SwiftUI

struct ChildView: View {
    
    var ParentPick:Int
    
    var body: some View {
        
        VStack{
            
            Text("You Picked \(ParentPick)")
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Go Back")
            })
            
        }
    }
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
        ChildView(ParentPick: 1)
    }
}
