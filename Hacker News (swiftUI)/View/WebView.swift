//
//  WebView.swift
//  Hacker News (swiftUI)
//
//  Created by Quan's Macbook on 23/01/2022.
//

import WebKit
import SwiftUI


struct WebView : UIViewRepresentable {
    let urlString : String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
            
        }
    }
}
