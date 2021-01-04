//
//  StackPractice.swift
//  imageTest
//
//  Created by Pradyumn Shukla on 04/01/21.
//

import SwiftUI

struct StackPractice: View {
    var body: some View {
        
        ZStack {
            PricingView(icon: "sparkle",title: "Basic", price: "₹49", textColor: .white, bgColor: .purple)
                .padding()
                .offset(x: 0, y: 180)
    
            PricingView(icon: "dial.min", title: "Pro", price: "₹99", textColor: .white, bgColor: .yellow)
                .padding()
                .scaleEffect(0.95)
            
            PricingView(icon: "wand.and.rays", title: "Team", price: "₹299", textColor: Color.white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255))
                .padding()
                .offset(x: 0, y: -210)
                .scaleEffect(0.9)
          
            
        }
        
        
    }
}

struct StackPractice_Previews: PreviewProvider {
    static var previews: some View {
        StackPractice()
    }
}
