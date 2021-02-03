//
//  MainView.swift
//  TestSwiftUI
//
//  Created by Thomas Woodfin on 2/3/21.
//

import SwiftUI

struct MainView: View {
    
    @State private var isAnimating = false
    private let animation = Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)
    
    // MARK: -  PROPERTIES
    let tabs = [
        Tab(imageName: "checkmark.circle.fill", title: "Acknowledge Form"),
        Tab(imageName: "checkmark.circle.fill", title: "Training"),
        Tab(imageName: "cross", title: "Medical"),
        Tab(imageName: "checkmark.circle.fill", title: "Attest")]
    
    
    init() {
        // this is not the same as manipulating the proxy directly
        let appearance = UINavigationBarAppearance()
        
        // this overrides everything you have set up earlier.
        appearance.configureWithTransparentBackground()
        
        // this only applies to small titles
        appearance.titleTextAttributes = [
            .font : UIFont.systemFont(ofSize: 20),
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        
        //In the following two lines you make sure that you apply the style for good
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        
        // This property is not present on the UINavigationBarAppearance
        // object for some reason and you have to leave it til the end
        UINavigationBar.appearance().tintColor = .white
        
    }

    
    // MARK: - BODY
    var body: some View {
        
        NavigationView{
            
            VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0){
                HStack (alignment: .top, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/) {
                    
                    ForEach(tabs) { item in
                        HeaderMainView(imageName: item.imageName, text: item.title)
                    }
                }
                .padding(.top, 60)
                .padding(.bottom, 20)
                .background(Color("HeaderColor"))
                
                ScrollView {
                    
                    VStack (alignment: .leading, spacing: 20) {
                        
                        Text("COVIDPass")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("Access Granted")
                            .foregroundColor(.white)
                            .font(.footnote)
                            .fontWeight(.heavy)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .background(Color("GreenStart"))
                            .cornerRadius(6)
                        
                        NavigationLink(destination: DetailView()) {
                            MainCardView()
                                .shadow(radius: 10)
                            .scaleEffect(isAnimating ? 1.0 : 0.9)
                        }.buttonStyle(PlainButtonStyle())
                        
                        
                        MainCardWithoutImageView()
                            .shadow(radius: 10)
                        
                        HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15){
                            Text("You are cleared for access to these building(s) until") + Text(" 7:35PM").bold() + Text(" on") + Text(" June 15").bold()
                            Spacer()
                            Image(systemName: "chevron.right").foregroundColor(.white)
                        }.font(.title3)
                        .foregroundColor(.white)

                        .padding(.leading, 30)
                        .padding(.vertical, 15)
                        
                        Text("Retake Attestation")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .padding(.vertical, 15)
                            .frame(idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 1)
                            )
                        
                        
                        Spacer()
                        
                        
                    }.padding()
                    
                }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            }
            .onAppear {
                DispatchQueue.main.async {
                    withAnimation(animation) {
                        isAnimating = true
                    }

                }
            }
            .background(Color("MainViewColor"))
            .ignoresSafeArea()
            .navigationBarHidden(true)

        } // NAVIGATION VIEW
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - PREIVEW
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .previewDevice("iPhone Xʀ")
    }
}
