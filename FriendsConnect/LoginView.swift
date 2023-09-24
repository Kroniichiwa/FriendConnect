//
//  Login.swift
//  FriendsConnect
//
//  Created by Kritsadalakhasont on 24/9/2566 BE.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 10) // Set the corner radius
                    .frame(width: 250.0, height: 250.0)
                    .foregroundColor(Color.purple)
                    .border(Color.black, width: 2)
                Text("Friend(s) Connect")
                    .font(.title)
                    .fontWeight(.light)
            }
            .padding(.all, 15.0)
            TextField("Username", text: $username).textFieldStyle(PlainTextFieldStyle()) // This removes the default border
                .padding() // Add padding for a better visual appearance
                .border(Color.white, width: 2) // Add a custom border
                .padding()
            SecureField("Password", text: $password)
                .textFieldStyle(PlainTextFieldStyle())
                .padding()
                .border(Color.white, width: 2)
                .padding()
            Button(action: {
                    // Handle login button action here
            }) {
                Text("Login")
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(5.0)
            }.padding(.vertical, 19.0)
            HStack{
                Button(action: {
                    // Handle login button action here
                }) {
                    Text("Register")
                        .padding()
                        .foregroundColor(.white)
                        .cornerRadius(5.0)
                }
                Button(action: {
                    // Handle login button action here
                }) {
                    Text("forget password?")
                        .padding()
                        .foregroundColor(.white)
                        .cornerRadius(5.0)
                }
            }
            Spacer()
        }.ignoresSafeArea()
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
