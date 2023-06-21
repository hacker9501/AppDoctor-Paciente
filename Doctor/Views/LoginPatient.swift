//
//  LoginPatient.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 20/06/23.
//

import SwiftUI

struct LoginPatient: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var recupassword: String = ""
    
    var body: some View {
        ZStack{
            VStack{
                Image("logo")
                    .padding(.bottom,90)
            }
            .frame(width: 400, height: 300)
            .background(.black)
            .padding(.bottom,459)
            
            VStack{
                
                VStack(alignment: .leading, spacing: 6) {
                    VStack{
                        Image("corazon")
                        Text("PATIENT")
                    }
                    .padding()
                    
                    VStack {
                        
                        TextField("Enter email or username", text: $email)
                            .frame(width: 330,height: 35)
                            .cornerRadius(1)
                            .border(Color.gray,width: 1)
                            .padding(.top,8)
                        TextField("Password",text: $password)
                            .frame(width: 330,height: 35)
                            .cornerRadius(1)
                            .border(Color.gray,width: 1)
                            .padding(.top,10)
                        Button(action: {
                            
                        }, label: {
                            Text("Forgor Password?")
                                .padding(EdgeInsets(top: 15, leading: 185, bottom: 15, trailing: 0))
                                .foregroundColor(.gray)

                        })
                        Button(action: {
                            
                        }, label: {
                            Text("Registrarse")
                                .frame(width: 300,height: 40)
                                .background(.black)
                                .cornerRadius(25)
                                .foregroundColor(.white)
                                .padding(.top,10)
                            
                        })
                        
                        HStack{
                            Text("¿Ya tienes una cuenta?")
                            Button(action: {
                                
                            }, label: {
                                Text("Sign in")
                                
                            })
                        }
                        .padding()
                        
                    }.padding()
                    
                }
                .background(.white)
                .cornerRadius(20)
                .shadow(radius: 3)
                .padding(.top,40)
            }
        }
        
    }
}

struct LoginPatient_Previews: PreviewProvider {
    static var previews: some View {
        LoginPatient()
    }
}
