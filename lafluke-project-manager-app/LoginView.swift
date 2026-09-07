//
//  LoginView.swift
//  lafluke-project-manager-app
//
//  Created by Juan Cruz on 9/6/26.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    
    
    var body: some View {
        ZStack {
            Color(.pageBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                Rectangle()
                    .frame(height:56)
                    .frame(maxWidth: .infinity)
                
                Spacer()
                
                VStack(spacing: 12) {
                    Text("Sign in")
                    Text("Manage your projects")

                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)

                    Button("Login") { }

                    Text("NEW HERE")

                    Button("Register") { }
                }
                .padding(20)
                .frame(maxWidth: 384)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            LinearGradient(
                                colors: [Color(.cardTop), Color(.cardBottom)],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color(.cardBorder), lineWidth: 1)
                )
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
