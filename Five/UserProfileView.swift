//
//  UserProfileView.swift
//  OldFive
//
//  Created by 孙雨琦 on 2022/7/4.
//

import SwiftUI

struct UserProfileView: View {
    var person: Person
    @State var choice = 0
    @State var index = 0
    @Namespace var name
       var channel = ["信息", "详细资料"]
    
    private func contact() {
        //TODO
    }
    var body: some View {
        VStack {
            MapView(coordinate: person.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            HStack {
                Button {
                    contact()
                } label: {
                    Image("Back")
                }
                .padding([.top, .leading, .bottom])
                Spacer()
            }
            CircleImage(image:Image("User_Profile_Photo_Default"))
                .padding(.vertical, 20.0).shadow(radius: 10)
            Text("张三")
                .padding(.bottom, 50.0).font(.title)
            HStack(spacing: 0) {
                Button {
                    withAnimation(.spring()) {
                        index = 0
                    }
                } label: {
                    VStack() {
                        Text("个人信息")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 0 ? .blue : .gray )
                        ZStack() {
                            Capsule().fill(Color.blue.opacity(0.04))
                                .frame(height: 4)
                            if index == 0 {
                                Capsule().fill(Color.blue)
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                        
                    }
                }
                Button {
                    withAnimation(.spring()) {
                        index = 1
                    }
                } label: {
                    VStack() {
                        Text("需求")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 1 ? .blue : .gray )
                        ZStack() {
                            Capsule().fill(Color.blue.opacity(0.04))
                                .frame(height: 4)
                            if index == 1 {
                                Capsule().fill(Color.blue)
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                }
            }
            //Spacer()
            
            if index == 0 {
                PersonalInfo()
            } else if index == 1 {
                MyRequirments()
            }
            
            Spacer()
            
            Button {
                contact()
            } label: {
                Text("联系")
            }.padding(.bottom).buttonStyle(MyButtonStyle()).shadow(radius: 8)

           
        }
    
       
    }
}

struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Spacer()
            Image("Call")
            configuration.label
                .padding()
                .foregroundColor(configuration.isPressed ? .gray: .white)
            Spacer()
        }.background(Color.green.cornerRadius(15.0))
            .frame(width: 300)
            .scaleEffect(configuration.isPressed ? 0.9: 1.0)
    }
}

struct PersonalInfo: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack{
                VStack(alignment: .leading, spacing: 0) {
                    Text("年龄").foregroundColor(.gray)
                    Text("75").font(.system(size: 20))
                        .padding(.bottom, 5)
                    Capsule().fill(Color.gray.opacity(0.3))
                        .frame(height: 1)
                }
                Spacer()
            }
            .padding(.all)
            HStack{
                VStack(alignment: .leading, spacing: 0) {
                    Text("住址").foregroundColor(.gray)
                    Text("浙江省杭州市上城区XXXX").font(.system(size: 20))
                        .padding(.bottom, 5)
                    Capsule().fill(Color.gray.opacity(0.3))
                        .frame(height: 1)
                }
                Spacer()
            }
            .padding(.all)
            HStack{
                VStack(alignment: .leading, spacing: 0) {
                    Text("联系方式").foregroundColor(.gray)
                    Text("12345678901").font(.system(size: 20))
                        .padding(.bottom, 5)
                    Capsule().fill(Color.gray.opacity(0.3))
                        .frame(height: 1)
                }
                Spacer()
            }
            .padding(.all)
            HStack{
                VStack(alignment: .leading, spacing: 0) {
                    Text("性别").foregroundColor(.gray)
                    Text("男").font(.system(size: 20))
                        .padding(.bottom, 5)
                    Capsule().fill(Color.gray.opacity(0.3))
                        .frame(height: 1)
                }
                Spacer()
            }
            .padding(.all)
            
        }
    }
}

struct MyRequirments: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("买生活物资").font(.title)
                Text("请帮我买一袋洗衣粉和两节电池。")
                Text("5分钟前")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding(.all, 20.0)
            .frame(width: 350.0, height: 100.0)
            .background(Color(hue: 1.0, saturation: 0.314, brightness: 1.0, opacity: 0.781).cornerRadius(25))
            .shadow(radius: 5)
            .padding(.bottom, 10)

            
            VStack {
                Text("买菜").font(.title)
                Text("请帮我买些青菜回来。")
                Text("15分钟前")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding(.all, 20.0)
            .frame(width: 350.0, height: 100.0)
            .background(Color(hue: 1.0, saturation: 0.314, brightness: 1.0, opacity: 0.781).cornerRadius(25))
            .shadow(radius: 5)
            .padding(.bottom, 10)
            
            VStack {
                Text("聊天").font(.title)
                Text("今天晚上能来陪我聊聊天吗？")
                Text("5小时前")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding(.all, 20.0)
            .frame(width: 350.0, height: 100.0)
            .background(Color(hue: 0.364, saturation: 0.26, brightness: 1.0).cornerRadius(25))
            .shadow(radius: 5)
            .padding(.bottom, 10)
            
            VStack {
                Text("体检").font(.title)
                Text("明天早上7点要体检。")
                Text("1天前")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding(.all, 20.0)
            .frame(width: 350.0, height: 100.0)
            .background(Color(hue: 0.364, saturation: 0.26, brightness: 1.0).cornerRadius(25))
            .shadow(radius: 5)
            .padding(.bottom, 10)
            
        }.padding(.top, 10)
        
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(person: personData[0])
    }
}
