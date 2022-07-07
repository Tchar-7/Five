//
//  UserListView.swift
//  Five
//
//  Created by Tang Chenyu on 2022/7/7.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        NavigationView {
            List(personData) { person in
                NavigationLink(destination: UserProfileView(person: person)) {
                    UserCardView(person: person)
                }
            }
            .navigationBarTitle(Text("需求流"))
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
