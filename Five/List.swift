//
//  List.swift
//  OfO
//
//  Created by Tang Chenyu on 2022/7/6.
//

import SwiftUI

struct List: View {
    var body: some View {
        Text("Hello")
    }
}


struct List_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            List()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
