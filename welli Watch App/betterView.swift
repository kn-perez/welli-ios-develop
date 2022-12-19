//
//  betterView.swift
//  welli Watch App
//
//

import SwiftUI

// This view asks whether you feel better and based on your answer takes you to the rewards or back to the main page
struct betterView : View{
    var body: some View{
        VStack {
            Text("Do You Feel Better?")
                .padding()
            NavigationLink(destination: rewardView(), label:{ Text("Yes")
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
