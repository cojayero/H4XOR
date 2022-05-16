//
//  WebView.swift
//  H4XOR
//
//  Created by Baldomero Fernandez Manzano on 16/5/22.
//

import SwiftUI
import WebKit

struct WebView:UIViewRepresentable{
    // typealias UIViewType = WebView.UIViewType
    let urlString: String?
    func makeUIView(context: UIViewRepresentableContext<WebView>) ->  WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView,
                      context: UIViewRepresentableContext<WebView>) {
        if let safeString = urlString {
            if let url  = URL(string: safeString){
                let request = URLRequest(url:url)
                uiView.load(request)
            }
        }
    }
    
    
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlString: "http://www.google.es")
    }
}
