//
//  Register.swift
//  FriendsConnect
//
//  Created by Kritsadalakhasont on 25/9/2566 BE.
//

import SwiftUI

struct Register: View {
    @State private var userData = UserData(username: "", password: "", uid: "", name: "")

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
                    // Store the user's data in userData
                    userData.username = username
                    userData.password = password
                    userData.uid = uid
                    userData.name = name
                    
                    // Optionally, you can print the stored data for testing purposes
                    print("User Data: \(userData)")
                    
                    // Display a message to indicate that data is stored
                    showAlert = true
                }) {
                    Text("Create")
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(5.0)
                }
                .padding(.vertical, 19.0)
                .accessibilityLabel("Create")

                // Add a state variable to control the alert
                @State private var showAlert = false

                // Use an alert to display a message
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Data Stored"),
                        message: Text("User data has been stored successfully."),
                        dismissButton: .default(Text("OK"))
                    )
                }


                .padding(.vertical, 19.0)
                .accessibilityLabel("Create")
                
                Spacer()
            }
        }
    }
}
struct UserData {
    var username: String
    var password: String
    var uid: String
    var name: String
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}

