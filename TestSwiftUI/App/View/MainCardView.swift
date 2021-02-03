//
//  MainCardView.swift
//  TestSwiftUI
//
//  Created by Thomas Woodfin on 2/3/21.
//

import SwiftUI

struct MainCardView: View {

    var body: some View {
        
        VStack (alignment: .center, spacing: 5){
            
            Image(systemName: "checkmark.shield.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 60.0, height:60)
                .foregroundColor(.white)

            Text("You have marked eligable to receive the COVID-19 vaccine ")
                .font(.title3)
                .multilineTextAlignment(.leading)
                .minimumScaleFactor(0.9)
                .foregroundColor(.white)
                .padding()
               
            Text("Get Started")
                .fontWeight(.medium)
                .padding(.vertical, 15)
                .frame(idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.white)
                .cornerRadius(10)
            
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [Color("GreenStart"), Color("GreenEnd")]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(15)
    }
}

struct MainCardView_Previews: PreviewProvider {
    static var previews: some View {
        MainCardView()
            .previewLayout(.sizeThatFits)
    }
}
