//
//  HeaderMainView.swift
//  TestSwiftUI
//
//  Created by Thomas Woodfin on 2/3/21.
//

import SwiftUI

struct HeaderMainView: View {
    
    // MARK: - PROPERTIES
    let imageName: String
    let text: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            VStack {
                
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 45, height: 45, alignment: .center)
                
                Text(text)
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                
            } // VSTACK
            .frame(minWidth: 0,
                   maxWidth: .infinity)

            
        } // HSTACK
        .background(Color("HeaderColor"))
    }
    
}

// MARK: - PREVIEw
struct HeaderMainView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderMainView(imageName: "checkmark.circle.fill", text: "Acknowledge Form")
            .previewLayout(.sizeThatFits)
    }
}
