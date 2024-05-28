////
////  LoginView.swift
////  Login
////
////  Created by student on 22.05.2024.
////
//
//import SwiftUI
//
//struct LoginView: View {
//    
//    @State private var email: String = ""
//    @State private var password: String = ""
//    @State private var animateEllipses = false
//    var body: some View {
//        NavigationView{
//            ZStack(alignment: .topLeading){
//                VStack(spacing: 40){
//                    ZStack{
//                        Ellipse()
//                            .frame(width: 510, height: 478)
//                            .padding(.leading, -200)
//                            .foregroundColor(Color("color2"))
//                            .padding(.top,-200)
//                            .offset(x: animateEllipses ? 0 : UIScreen.main.bounds.width)
////                            .scaleEffect(animateEllipses ? 1 : 0.8)
////                            .opacity(animateEllipses ? 1 : 0)
//                            .animation(.easeOut(duration: 1.0), value: animateEllipses)
//                        
//                        Ellipse()
//                            .frame(width: 458, height: 420)
//                            .padding(.trailing, -500)
//                            .foregroundColor(Color("color1"))
//                            .padding(.top,-200)
//                            .offset(x: animateEllipses ? 0 : -UIScreen.main.bounds.width)
////                            .scaleEffect(animateEllipses ? 1 : 0.8)
////                            .opacity(animateEllipses ? 1 : 0)
//                            .animation(.easeOut(duration: 1.0), value: animateEllipses)
//                        
//                        Text("Welcome \nBack")
//                            .foregroundColor(.white)
//                            .font(.system(size: 35))
//                            .fontWeight(.bold)
//                            .multilineTextAlignment(.leading)
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                            .padding(.leading,20)
//                    }
//                    
//                    VStack(spacing: 30){
//                        VStack(spacing: 30){
//                            CustomTextField(placeHolder:"Email",imageName:"envelope",bColor:"textColor1",tOpacity: 0.6,value:$email)
//                            CustomTextField(placeHolder:"Password",imageName:"lock",bColor:"textColor1",tOpacity: 0.6,value:$password)
//                        }
//                        
//                        VStack{
//                            Text("Forgot Password")
//                                .fontWeight(.medium)
//                            
//                            Button(action:{},label:{
//                                CustomButton(title: "LOG IN", bgColor:"color1")
//                            })
//                        }.padding(.horizontal,20)
//                    }
//                }
//            }.onAppear {
//                animateEllipses = true
//            }
//        }
//    }
//}
//
//#Preview {
//    LoginView()
//}











import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var animateEllipses = false
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .topLeading) {
                VStack(spacing: 40) {
                    ZStack {
                        Ellipse()
                            .frame(width: 510, height: 478)
                            .padding(.leading, -200)
                            .foregroundColor(Color("color2"))
                            .padding(.top, -200)
                            .offset(x: animateEllipses ? 0 : UIScreen.main.bounds.width)
                            .animation(.easeOut(duration: 1.0), value: animateEllipses)
                        
                        Ellipse()
                            .frame(width: 458, height: 420)
                            .padding(.trailing, -500)
                            .foregroundColor(Color("color1"))
                            .padding(.top, -200)
                            .offset(x: animateEllipses ? 0 : -UIScreen.main.bounds.width)
                            .animation(.easeOut(duration: 1.0), value: animateEllipses)
                        
                        Text("Welcome \nBack")
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                    }
                    
                    VStack(spacing: 30) {
                        VStack(spacing: 30) {
                            CustomTextField(placeHolder: "Email", imageName: "envelope", bColor: "textColor1", tOpacity: 0.6, value: $email)
                            CustomTextField(placeHolder: "Password", imageName: "lock", bColor: "textColor1", tOpacity: 0.6, value: $password)
                        }
                        
                        VStack {
                            Text("Forgot Password")
                                .fontWeight(.medium)
                            
                            Button(action: {}, label: {
                                CustomButton(title: "LOG IN", bgColor: "color1")
                            })
                        }.padding(.horizontal, 20)
                    }
                }
            }
            .onAppear {
                animateEllipses = true
            }
        }
    }
}
