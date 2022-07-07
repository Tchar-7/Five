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
        HStack{
            Image("User_Profile_Photo_Default").frame(width: 0.1, height: 0.1)
            VStack(alignment: .leading){
                Text(person.name).font(.title)
                Text(person.updateTime).font(.subheadline)
            }.padding(60)

            Spacer()
        }.frame(width: 200, height: 30)
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
