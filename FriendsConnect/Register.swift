//
//  Register.swift
//  FriendsConnect
//
//  Created by Kritsadalakhasont on 25/9/2566 BE.
//

import SwiftUI

struct Register: View {
    @State private var username = ""
    @State private var password = ""
    @State private var uid = ""
    @State private var name = ""
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("Make your connection")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .padding(.bottom)
                
                Text("Please fill your information")
                    .foregroundColor(Color.white)
                CustomTextField(placeholder: "Name", text: $name)
                    .padding([.top, .leading, .bottom], 10)
                CustomTextField(placeholder: "Username", text: $username)
                    .padding([.top, .leading, .bottom], 10)
                CustomTextField(placeholder: "Password", text: $password, isSecure: true)
                    .padding([.top, .leading, .bottom], 10)
                Button(action: {
                    // Handle login button action here
                }) {
                    Text("Create")
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(5.0)
                }
                .padding(.vertical, 19.0)
                .accessibilityLabel("Create")
                
                Spacer()
            }
        }
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}

