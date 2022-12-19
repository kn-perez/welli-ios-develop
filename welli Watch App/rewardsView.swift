//
//  rewardsView.swift
//  welli Watch App
//
//

import SwiftUI

//Reward View Interface with Navigation to the Main Page
struct rewardView : View{
    @State var counter :Int = 1
    var body: some View
    {
        VStack{
            Image(systemName: "star.fill")
                .padding()
            //.onReceive(Publisher, perform: {self.counter += 1})
            Text("You now have a total of " + String(counter))
                .font(.footnote)
                .padding()
            NavigationLink(destination: ContentView() ,label:{Text("Repeat")
                    .bold()
                    .frame(width: 120.0, height: 7.0)
            }) .offset(y: 30)
        }.navigationBarBackButtonHidden(true)
    }
}
