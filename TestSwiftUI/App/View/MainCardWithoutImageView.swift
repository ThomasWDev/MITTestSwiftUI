//
//  MainCardWithoutImageView.swift
//  TestSwiftUI
//
//  Created by Thomas Woodfin on 2/3/21.
//

import SwiftUI

struct MainCardWithoutImageView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
 
    
    var body: some View {
        VStack (alignment: .center, spacing: 5){
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book")
                .multilineTextAlignment(.leading)
                .foregroundColor(.white)
                .padding()
            
            Text("Continue to Medical")
                .fontWeight(.medium)
                .padding(.vertical, 15)
                .frame(idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.white)
                .cornerRadius(10)
            
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [Color("BlueStart"), Color("BlueEnd")]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(15)
        
    }
}

// MARK: - PREVIEW
struct MainCardWithoutImageView_Previews: PreviewProvider {
    static var previews: some View {
        MainCardWithoutImageView()
            .previewLayout(.sizeThatFits)
    }
}
