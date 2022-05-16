//
//  ContentView.swift
//  H4XOR
//
//  Created by Baldomero Fernandez Manzano on 16/5/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject  var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination:DetailView(urlString: post.url)) {
                    HStack {
                        Text(String(post.points!))
                        Text(post.title)
                    }
                }
            }.navigationTitle("H4X0R News")
        }.onAppear{
            self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

/**
 struct Post:Identifiable,Codable{
 let id: String
 let title: String
 }
 
 let posts = [
 Post(id: "1", title: "Hello"),
 Post(id: "2", title: "Bonjour"),
 Post(id: "3", title: "Hola")
 ]
 */
