//
//  finishView.swift
//  welli
//
//

import SwiftUI

//This view asks the user whether they have finished either the intervention or breathing and takes them to the next view
struct finishView : View{
    var body: some View{
        VStack {
            Text("Did You Finish Your Intervention?")
                .padding()
            NavigationLink(destination: betterView(), label:{ Text("Yes")
                    .foregroundColor(.green)
                    .bold()
            })
            
            NavigationLink(destination: ContentView(), label:{ Text("No")
                    .foregroundColor(.red)
                    .bold()
            })
        }.navigationBarBackButtonHidden(true)
    }
}
