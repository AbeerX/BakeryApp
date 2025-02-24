//
//  profile.swift
//  Bakery
//
//  Created by Abeer on 21/07/1446 AH.
//
//import SwiftUI
//struct profile: View {
//    @ObservedObject var userViewModel: UserViewModel
//    @State private var newName = ""
//
//    var body: some View {
//        VStack(spacing: 20) {
//            if $userViewModel.currentUser != nil {
//                HStack {
//                    Text("Username:")
//                    TextField("Enter your name", text: $newName)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                        .onAppear {
//                            if let user = userViewModel.currentUser{
//                                newName = user.name
//                            }}
//                }
//
//                Button(action: {
//                    userViewModel.updateUsername(newName: newName)
//                }) {
//                    Text("Update Username")
//                        .frame(maxWidth: .infinity)
//                        .padding()
//                        .background(Color.blue)
//                        .foregroundColor(.white)
//                        .cornerRadius(8)
//                }
//                .padding(.top)
//
//                Text("Booked Courses:")
//                if userViewModel.currentUser?.name == "No courses" {
//                    Text("You don't have any booked courses.")
//                        .foregroundColor(.gray)
//                }
//            }
//            else {
//                Text("No user data available")
//            }
//        }
//        .padding()
//        .navigationTitle("Profile")
//    }
//}
////
////#Preview {
////    profile(userViewModel: UserViewModel)
////}
