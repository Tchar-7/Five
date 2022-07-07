//
//  UserCardView.swift
//  Five
//
//  Created by Tang Chenyu on 2022/7/7.
//

import SwiftUI

struct UserCardView: View {
    var person : Person
    var body: some View {
        HStack {
            if person.name != "张三" {
                Capsule().fill(Color.green)
                    .frame(width: 30.0, height: 6)
                    .rotationEffect(Angle.init(degrees: 90))
            } else {
                Capsule().fill(Color.red)
                    .frame(width: 30.0, height: 6)
                    .rotationEffect(Angle.init(degrees: 90))
            }
            
            HStack{
                
                Image("User_Profile_Photo_Default").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fit).frame(width: 58.0, height: 58.0)
                
                
                VStack(alignment: .leading){
                    Text(person.name).font(.title)
                    Text(person.updateTime).font(.subheadline)
                }
                
                MapView(coordinate: person.locationCoordinate)
                    .frame(width: 58.0, height: 58.0)
                    .cornerRadius(10)

                VStack {
                    HStack {
                        Image("Oval")
                        Text("买菜").font(.footnote)
                    }
                    
                    HStack {
                        Image("Oval")
                        Text("聊天").font(.footnote)
                    }
                }
                
                if person.name != "张三" {
                    Image("CheckF")
                } else {
                    Image("Check")
                }
                    
    //            if person.isFinished == 0 {
    //                Image("Check")
    //            } else if person.isFinished == 1 {
    //                Image("CheckF")
    //            }
                Spacer()
            }.frame(width: 280, height: 30)
            Spacer()
            
        }.frame(width: 300, height: 70)
            .cornerRadius(15)
            .background(Color.white.cornerRadius(15.0))
            
        }
}

struct UserCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UserCardView(person: personData[0])
            UserCardView(person: personData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
