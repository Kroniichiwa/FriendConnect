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
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 250.0, height: 250.0)
                        .foregroundColor(Color.purple)
                        .border(Color.black, width: 2)
                    
                    Text("Friend(s) Connect")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                }
                Spacer()
                
                // Custom TextField with white placeholder text
                CustomTextField(placeholder: "Username", text: $username)
                CustomTextField(placeholder: "Password", text: $password, isSecure: true)
                
                Button(action: {
                    // Handle login button action here
                }) {
                    Text("Login")
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(5.0)
                }
                .padding(.vertical, 19.0)
                .accessibilityLabel("Login")
                
                HStack {
                    Button(action: {
                        // Handle registration button action here
                    }) {
                        Text("Register")
                            .padding()
                            .foregroundColor(Color.purple)
                            .cornerRadius(5.0)
                    }
                    
                    Button(action: {
                        // Handle "Forget Password?" button action here
                    }) {
                        Text("Forget Password?")
                            .padding()
                            .foregroundColor(Color.purple)
                            .cornerRadius(5.0)
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

// CustomTextField with bold and white placeholder text and static underline
struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(.white) // Set placeholder text color
                        .font(.body) // Apply bold font weight
                        .padding(.horizontal, 8)
                }
                if isSecure {
                    SecureField("", text: $text)
                        .textFieldStyle(PlainTextFieldStyle()) // Apply plain style
                        .padding(10) // Add padding to the SecureField for a better look
                        .background(Color.clear) // Clear background color
                        .alignmentGuide(.top) { d in d[.top] } // Maintain static position
                } else {
                    TextField("", text: $text)
                        .textFieldStyle(PlainTextFieldStyle()) // Apply plain style
                        .padding(10) // Add padding to the TextField for a better look
                        .background(Color.clear) // Clear background color
                        .alignmentGuide(.top) { d in d[.top] } // Maintain static position
                }
            }
            .foregroundColor(.white)
            .accentColor(.white)
            
            Rectangle() // Add a static underline
                .frame(height: 1) // Adjust the height of the underline
                .foregroundColor(.white) // Set the underline color
        }
        .padding(.horizontal, 8) // Adjust horizontal padding
    }
}

