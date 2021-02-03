//
//  DetailView.swift
//  TestSwiftUI
//
//  Created by Thomas Woodfin on 2/3/21.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.init(named: "NavColor")
    }
    
    var body: some View {
        
        VStack {
            ZStack {
                Color("NavColor").ignoresSafeArea(.all)
                VStack (alignment: .center, spacing: nil){
                    HStack (alignment: .center, spacing: 5){
                        MedicalTabView(isSelected: false, imageName: "stethoscope", text: "Covid Test", hasCircle: true)
                        MedicalTabView(isSelected: false, imageName: "pills", text: "Flu Shot", hasCircle: true)
                        MedicalTabView(isSelected: true, imageName: "checkmark.shield", text: "Vaccination", hasCircle: false)
                    }.background(Color("NavColor"))
                    
                    ScrollView {
                        
                        VStack (alignment: .center, spacing: 20) {
                            
                            Image(systemName: "checkmark.shield.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .padding(.top, 20)
                            
                            Text("One down, one to go! You are almost done.")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding(.horizontal)
                            
                            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                                .font(.body)
                                .padding(.horizontal, 40)
                            
                            ZStack {
                                Color.white
                                    .frame(width: 130, height: 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .offset(y: -13.0)
                                HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100){
                                    VStack {
                                        Image(systemName: "checkmark.circle.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        Text("Dec 5")
                                            .bold()
                                    }
                                    
                                    VStack {
                                        Image(systemName: "shield.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        Text("Dec 12")
                                            .bold()
                                    }
                                    
                                }
                            }.padding(.top)
                            .foregroundColor(.white)
                            
                        }
                        .padding()
                        .foregroundColor(.white)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (alignment: .center, spacing: 20){
                                ForEach(0..<5) { i in
                                    if i == 0{
                                        ScheduleView()
                                            .padding(.leading, 20)
                                    }else if i == 4{
                                        ScheduleView()
                                            .padding(.trailing, 20)
                                    }else{
                                        ScheduleView()
                                    }
                                }
                            }
                        }.padding(.top, 30)
                        .padding(.bottom, 60)
                        
                    }
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("GreenStart"), Color("GreenEnd")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    
                }
                .background(Color("NavColor")).navigationBarTitle(Text("Medical"), displayMode: .inline).navigationBarHidden(false)
                
            }
            
            ZStack {
                Color.white
                    .frame(height: 70)
                    .clipped()
                    .cornerRadius(20)
                VStack {
                    Text("John Smith")
                        .font(.title2)
                        .fontWeight(.light)
                    Image("BarCode")
                        .resizable()
                        .frame(width: 300, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }.offset(y: 30)
            }.offset(y: -50)
            
        }
        
        
        
    }
}

// MARK: - PREVIEW
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

