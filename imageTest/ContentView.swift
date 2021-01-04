//
//  ContentView.swift
//  imageTest
//
//  Created by Pradyumn Shukla on 04/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("paris")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300)
            .cornerRadius(10)
            .overlay(
                Color.black
                    .cornerRadius(10)
                    .opacity(0.4)
                    .overlay(
                        Text("Paris")
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                    )
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
