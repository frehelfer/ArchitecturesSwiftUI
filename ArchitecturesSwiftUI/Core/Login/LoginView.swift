//
//  LoginView.swift
//  ArchitecturesSwiftUI
//
//  Created by Frédéric Helfer on 05/02/23.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var vm = LoginViewModel()
    
    @State private var isSecure = true
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray.opacity(0.2).ignoresSafeArea()
                
                VStack(spacing: 30) {
                    Text("Welcome!")
                        .font(.title.bold())
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Email")
                        TextField("Enter your email", text: $vm.credentials.email)
                            .withDefaultTextFieldFormatting()
                            .keyboardType(.emailAddress)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Password")
                        
                        HStack {
                            if isSecure {
                                SecureField("Enter your password", text: $vm.credentials.password)
                                    .frame(height: 22)
                                
                            } else {
                                TextField("Enter your password", text: $vm.credentials.password)
                            }
                            
                            Button {
                                isSecure.toggle()
                            } label: {
                                Label("showPassword", systemImage: isSecure ? "eye.slash.fill" : "eye")
                                    .labelStyle(.iconOnly)
                                    .padding(.trailing, 5)
                            }

                        }
                        .withDefaultTextFieldFormatting()
                    }
                    .padding(.bottom, 30)
                    
                    
                    VStack(spacing: 18) {
                        Button {
                            withAnimation {
                                appState.updateAuthorization(with: true)
                            }
                        } label: {
                            Text("Login")
                                .padding(5)
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)
                        
                        NavigationLink {
                            RegisterView(vm: vm)
                        } label: {
                            Text("Register")
                                .padding(5)
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                    }
                    Spacer()
                    Spacer()
                }
                .padding(20)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(AppState())
    }
}
