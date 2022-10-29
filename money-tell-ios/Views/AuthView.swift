//
//  AuthView.swift
//  money-tell-ios
//
//  Created by i.gerenko on 27.10.2022.
//

import SwiftUI

struct AuthView: View {
    
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        VStack(spacing: 15) {
            TextField("Username", text: $username)
                .textContentType(.username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            
            SecureField("Password", text: $password)
                .textContentType(.password)
            
            Button(action: {} ) {
                Text("Forgot password?")
            }
            
            Button(action: {}) {
                Text("Sign In")
            }
            HStack {
                Text("Don't have an account? ")
                Button(action: {}) {
                    Text("Sign Up")
                }
            }
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
