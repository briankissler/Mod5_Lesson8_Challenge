//
//  ChildView.swift
//  Mod5_Lesson8_Challenge
//
//  Created by Brian Kissler on 8/11/21.
//

import SwiftUI

struct ChildView: View {
    
    @Binding var ParentPick:Int?
     
    
    var body: some View {
        
        VStack{
            
            Text("You Picked \(ParentPick ?? 0 )")
            
            Button(action: { ParentPick = nil  }, label: {
                Text("Go Back")
            })
            
        }.navigationBarHidden(true)
    }
}

struct ChildView_Previews: PreviewProvider {
    
    @State static var isShowing = 1
    
    static var previews: some View {
        ChildView(ParentPick: .constant(1))
    }
}
