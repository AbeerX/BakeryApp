//
//  signIn.swift
//  Bakery
//
//  Created by Abeer on 21/07/1446 AH.
//
//
//import SwiftUI
//import Foundation
//
//struct sinIn: View {
////    @StateObject var userViewModel = UserViewModel()
////    @State private var email = ""
////    @State private var password = ""
////    @State private var showProfile = false // التنقل للصفحة التالية
//
//    var body: some View {
////        NavigationView {
//            VStack(spacing: 20) {
////                TextField("Email", text: $email)
////                    .textFieldStyle(RoundedBorderTextFieldStyle())
////                    .keyboardType(.emailAddress)
////
////                SecureField("Password", text: $password)
////                    .textFieldStyle(RoundedBorderTextFieldStyle())
//
//                Button(action: {
////                    userViewModel.signIn(email: email, password: password)
////                    if userViewModel.isAuthenticated {
////                        showProfile = true
////                    }
//                }) {
//                    Text("Sign In")
//                        .frame(maxWidth: .infinity)
//                        .padding()
//                        .background(Color.orange)
//                        .foregroundColor(.white)
//                        .cornerRadius(8)
//                }
//                .padding(.top)
//
////                NavigationLink(
////                    destination: profile(userViewModel: userViewModel),
////                    isActive: $showProfile
////                ) {
////                    EmptyView()
////                }
////            }
//            .padding()
//            .navigationTitle("Sign In")
//        }
//    }
//    
//    func getUser() async throws -> user{
//        let endpoint = "https://api.airtable.com/v0/appXMW3ZsAddTpClm/user"
//        
//        guard let url = URL(string: endpoint) else {
//            throw GError.invalidURl}
//        
//        let (data, response) = try await URLSession.shared.data(for: url)
//        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
//            throw GError.invalidResponse
//        }
//        do {
//            let decoder = JSONDecoder()
//            decoder.keyDecodingStrategy = .convertFromSnakeCase
//            return try decoder.decode(user.self , from: data)
//        } catch{
//            throw GError.invalidData
//        }
//        }
//    }


//
//struct user {
//        var id:String
//        var name: String
//        var email: String
//        var password: String
//
//}
//
//enum GError: Error{
//    case invalidURl
//    case invalidResponse
//    case invalidData
//}
//#Preview {
//    sinIn()
//}
