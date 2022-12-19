//
//  mainMenuView.swift
//  welli Watch App
//
//

import SwiftUI

//This is the main page view where you can see the main questions that leads everything else off, this is the first interface that asks about their feelings
struct ContentView: View {
    var body: some View {
        NavigationView()
        {
            VStack {
                Text("How do you feel?")
                    .padding()
                NavigationLink(destination: deepBreathingView(), label:{ Text("Good")
                        .foregroundColor(.green)
                        .bold()
                })
                
                NavigationLink(destination: deepBreathingView(), label:{ Text("Okay")
                        .foregroundColor(.blue)
                        .bold()
                })
                
                NavigationLink(destination: interventionView(), label:{ Text("I Need Help")
                        .foregroundColor(.red)
                        .bold()
                })
            }
        }.navigationBarBackButtonHidden(true)
    }
}
