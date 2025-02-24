//
//  home.swift
//  Bakery
//
//  Created by Abeer on 20/07/1446 AH.
//
//struct Course: Identifiable {
//    let id = UUID()
//    let title: String
//    let level: String
//    let duration: String
//    let startDate: String
//    let imageUrl: String
//}
//import SwiftUI
//let sampleCourses = [
//    Course(title: "Babka dough", level: "Intermediate", duration: "2h", startDate: "20 Oct, 2023 - 12:00 AM", imageUrl: "image1"),
//    Course(title: "Cinnamon rolls", level: "Beginner", duration: "2h", startDate: "21 Oct, 2023 - 12:00 AM", imageUrl: "image2")
//]
//
//struct CourseRow: View {
//    let course: Course
//
//    var body: some View {
//        HStack {
//            Image(course.imageUrl)
//                .resizable()
//                .frame(width: 80, height: 80)
//                .cornerRadius(8)
//            VStack(alignment: .leading, spacing: 5) {
//                Text(course.title)
//                    .font(.headline)
//                Text(course.level)
//                    .font(.subheadline)
//                    .foregroundColor(.gray)
//                HStack {
//                    Text(course.duration)
//                        .font(.caption)
//                        .foregroundColor(.gray)
//                    Text(course.startDate)
//                        .font(.caption)
//                        .foregroundColor(.gray)
//                }
//            }
//            Spacer()
//        }
//        .padding()
//    }
//}
//
//struct HomeView: View {
//    var body: some View {
//        NavigationView {
//            VStack {
//                // شريط البحث
//                TextField("Search", text: .constant(""))
//                    .padding()
//                    .background(Color.gray.opacity(0.2))
//                    .cornerRadius(8)
//                    .padding(.horizontal)
//                
//                // قسم الكورسات
//                Text("Popular Courses")
//                    .font(.title2)
//                    .bold()
//                    .padding(.horizontal)
//                
//                List(sampleCourses) { course in
//                    NavigationLink(destination: CourseDetailView(course: course)) {
//                        CourseRow(course: course)
//                    }
//                }
//                .listStyle(PlainListStyle())
//            }
//            .navigationTitle("Home Bakery")
//        }
//    }
//}
//
//struct CourseDetailView: View {
//    let course: Course
//
//    var body: some View {
//        VStack(alignment: .leading, spacing: 20) {
//            Image(course.imageUrl)
//                .resizable()
//                .scaledToFit()
//                .frame(height: 200)
//                .cornerRadius(12)
//
//            Text(course.title)
//                .font(.largeTitle)
//                .bold()
//
//            Text("Level: \(course.level)")
//                .font(.headline)
//                .foregroundColor(.gray)
//
//            Text("Duration: \(course.duration)")
//                .font(.subheadline)
//
//            Text("Start Date: \(course.startDate)")
//                .font(.subheadline)
//            
//            Spacer()
//        }
//        .padding()
//        .navigationTitle(course.title)
//        .navigationBarTitleDisplayMode(.inline)
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
import SwiftUI

struct CoursesView: View {
    @StateObject private var viewModel = CoursesViewModel()

    var body: some View {
        NavigationView {
            VStack {
                if let errorMessage = viewModel.errorMessage {
                    Text("Error: \(errorMessage)")
                        .foregroundColor(.red)
                        .padding()
                } else {
                    List(viewModel.courses) { course in
                        CourseRow(course: course)
                    }
                }
            }
            .navigationBarTitle("Courses")
            .onAppear {
                viewModel.fetchCourses() // جلب الدورات عند ظهور الـ View
            }
        }
    }
}

struct CourseRow: View {
    var course: Course

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: course.image_url)) { image in
                image.resizable().scaledToFill().frame(width: 50, height: 50)
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(course.title)
                    .font(.headline)
                Text(course.location_name)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}
