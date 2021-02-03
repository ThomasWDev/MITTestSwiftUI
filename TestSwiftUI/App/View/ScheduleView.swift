//
//  ScheduleView.swift
//  TestSwiftUI
//
//  Created by Thomas Woodfin on 2/3/21.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        VStack {
            Text("Today")
                .foregroundColor(.white)
                .bold()
                .padding(.top, 5)
            HStack {
                VStack (alignment: .leading, spacing: 10) {
                    Text("Medical Trailer").bold()
                    Text("15min wait time").opacity(0.5)
                }.foregroundColor(.white)
                Spacer().frame(width: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                VStack (alignment: .leading, spacing: 10) {
                    Text("Open")
                    Text("Close")
                }.foregroundColor(.white).opacity(0.5)
                VStack (alignment: .leading, spacing: 10) {
                    Text("9:00am").bold()
                    Text("4:00pm").bold()
                }.foregroundColor(.white)
            }
            .padding()
            .background(Color("ScheduleBodyColor"))
            .cornerRadius(10)
        }.background(Color("ScheduleHeaderColor").cornerRadius(10))
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
            .previewLayout(.sizeThatFits)
    }
}
