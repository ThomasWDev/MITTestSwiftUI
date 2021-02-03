//
//  MedicalTabView.swift
//  TestSwiftUI
//
//  Created by Thomas Woodfin on 2/3/21.
//

import SwiftUI

struct MedicalTabView: View {
    
    var isSelected: Bool
    var imageName: String
    var text: String
    var hasCircle: Bool
    
    var body: some View {
        
        ZStack {
            
            if isSelected {
                Color("SelectedTab").cornerRadius(10)
            }else{
                Color("NavColor")
            }
            
            VStack (alignment: .center, spacing: 5){
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                Text(text)
                    .font(.footnote)
                    .fontWeight(.light)
            }.foregroundColor(.white)
            
            if hasCircle{
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 10, height: 10, alignment: .center)
                    .offset(x: 35, y: -30.0)

            }
            
        }
        .frame(width: 90, height: 80, alignment: .center)
    }
}

struct MedicalTabView_Previews: PreviewProvider {
    static var previews: some View {
        MedicalTabView(isSelected: false, imageName: "checkmark.shield", text: "Vaccination", hasCircle: true)
            .previewLayout(.sizeThatFits)
    }
}
