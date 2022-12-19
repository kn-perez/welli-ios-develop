//
//  ContentView.swift
//  welli Watch App
//
//  Created by Keilen Perez on 12/18/22.
//

import SwiftUI
import UIKit

//This view give the list of intervention activites that the user can pick, this interface is connect with an array and class found at the bottom of this file
struct interventionView : View{
    @State var num = 0.0
    @State var scale = 1.0
    var body: some View{
        NavigationStack{
            List {
                Section("Interventions")
                {
                    ForEach(activities) {activity in
                        HStack{
                            Image(systemName: "circle")
                                .frame(width: 25.0, height: 10.0)
                                .multilineTextAlignment(.leading)
                            
                            NavigationLink(activity.name, value: activity)
                        }.padding()
                    }.navigationBarBackButtonHidden(true)
                }.navigationBarBackButtonHidden(true)
            }.navigationDestination(for: activity.self ) {activity in
                ZStack{
                    VStack
                    {
                        Image(uiImage: UIImage(named: String(activity.image))!)
                            .resizable()
                            .ignoresSafeArea()
                            .frame(width: 55,height: 55)
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(scale)
                            .onAppear {
                                let baseAnimation = Animation.easeInOut(duration: 2)
                                
                                withAnimation(baseAnimation) {
                                    scale = 0.5
                                }
                            }
                        Text(activity.inter)
                            .padding()
                    }
                    NavigationLink(destination: finishView(),
                                   label: {Text("Finished")})
                    .offset(y:85)
                    .opacity(num)
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5), execute: {num += 1})
                    }
                        
                }.navigationBarBackButtonHidden(true)
                
            }.navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        interventionView()
    }
}

private struct activity: Identifiable, Hashable
{
    let name: String
    var inter: String
    var image: String
    var id: String { name }
}

var images: [String] = ["Asset 1.png","Asset 2.png","Asset 3.png"]


private let activities: [activity] =
[
    activity(name: "Deep Breath", inter: "Take a Deep Breath. Click finish when you are done.", image: "breathing.png"),
    
    activity(name: "Drink Water", inter: "Take a Drink of Water. Click finish when you are done.", image:"water.png"),
    
    activity(name: "Go Take a Walk", inter:"Take a Walk. Click finish when you are done.", image: "walk.png"),
    
    activity(name: "Journaling", inter: "Take your time to journal. Click finish when you are done.", image: "writing.png"),
    
    activity(name: "Play a Game", inter: "Take time to play a game. Click finish when you are done.", image: "games.png"),
    
    activity(name: "Read", inter: "Take time to read a book. Click finish when you are done.", image: "read.png"),
    
    activity(name: "Listen to Music", inter: "Listen to music. Click finish when you are done.", image: "music.png"),
    
    activity(name: "Talk to Someone", inter: "Take time to talk to someone. Click finish when you are done.", image: "talking.png"),
    
    activity(name: "Happy Picture", inter: "Enjoy the Picture! Click finish when you are done.", image: String(images.randomElement() ?? "Asset 8.png")),
]

