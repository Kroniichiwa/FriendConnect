//
//  ForgetPage.swift
//  FriendsConnect
//
//  Created by Kritsadalakhasont on 26/9/2566 BE.
//

import SwiftUI

struct ForgetPage: View {
    @State private var name = ""
    @State private var friendName = ""
    @State private var uid = ""
    
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Text("Ain't no way that you forget")
                    .font(.title)
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                    .padding(.bottom)
                Text("But your friends can help")
                    .foregroundColor(Color.white)
                    .padding(.bottom, -1.0)
                Text("Please fill your information")
                    .foregroundColor(Color.white)
                CustomTextField(placeholder: "Your name", text: $name)
                    .padding([.top, .leading, .bottom], 10)
                CustomTextField(placeholder: "Your uid", text: $friendName)
                    .padding([.top, .leading, .bottom], 10)
                CustomTextField(placeholder: "Your friend name", text: $uid)
                    .padding([.top, .leading, .bottom], 10)
                
                Button(action: {
                    // Handle login button action here
                }) {
                    Text("Confirm")
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(5.0)
                }
                .padding(.vertical, 19.0)
                .accessibilityLabel("Confirm")
                
                Spacer()
        
                
            }
            
        }
    }
}

struct ForgetPage_Previews: PreviewProvider {
    static var previews: some View {
        ForgetPage()
    }
}
