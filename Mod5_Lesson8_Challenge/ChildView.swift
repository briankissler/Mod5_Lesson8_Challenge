//
//  ChildView.swift
//  Mod5_Lesson8_Challenge
//
//  Created by Brian Kissler on 8/11/21.
//

import SwiftUI

struct ChildView: View {
    
    @Binding var ParentPick:Int
    
    var body: some View {
        
        VStack{
            
            Text("You Picked \(ParentPick)")
            
            Button(action: { ParentPick = 2  }, label: {
                Text("Go Back")
            })
            
        }
    }
}

struct ChildView_Previews: PreviewProvider {
    
    @State static var isShowing = 1
    
    static var previews: some View {
        ChildView(ParentPick: $isShowing)
    }
}
