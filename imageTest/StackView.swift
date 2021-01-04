//
//  StackView.swift
//  imageTest
//
//  Created by Pradyumn Shukla on 04/01/21.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            VStack {
                HStack (spacing: 15) {
                    PricingView(title: "Basic", price: "₹49", textColor: .white, bgColor: .purple)
                    
                    ZStack {
                        PricingView(title: "Pro", price: "₹99", textColor: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255))
                        
                        Text("Best for Designers")
                            .font(.system(.caption, design: .rounded))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .padding(5)
                            .background(Color.yellow)
                            .offset(x: 0, y: 90)
                    }
                    
                }
                .padding(.horizontal)
                
                
                ZStack {
                    PricingView(icon: "wand.and.rays", title: "Team", price: "₹299", textColor: Color.white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255))
                        .padding()
                    
                    Text("Perfect for teams with 10 members")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color.yellow)
                        .offset(x: 0, y: 110)
                }
                
                Spacer()
            }
            
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StackView()
                .previewDevice("iPhone 11 Pro")
        }
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 2) {
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("your Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }
        .padding()
    }
}

struct PricingView: View {
    var icon: String?
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    
    var body: some View {
        VStack {
            icon.map({
                Image(systemName: $0)
                    .font(.largeTitle)
                    .foregroundColor(textColor)
            })
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
                
            
            
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text("per month")
                .font(.system(.headline, design: .rounded))
                .foregroundColor(textColor)
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}
