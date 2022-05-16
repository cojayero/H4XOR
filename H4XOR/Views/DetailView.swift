//
//  DetailView.swift
//  H4XOR
//
//  Created by Baldomero Fernandez Manzano on 16/5/22.
//
import Foundation
import SwiftUI
import WebKit

struct DetailView: View {
    let urlString:String?
    
    var body: some View {
        WebView(urlString: urlString)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(urlString: "https://www.google.com")
    }
}



