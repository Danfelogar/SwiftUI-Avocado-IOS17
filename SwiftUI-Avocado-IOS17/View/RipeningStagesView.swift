//
//  RipeningStagesView.swift
//  SwiftUI-Avocado-IOS17
//
//  Created by Daniel Felipe on 22/02/24.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - Properties
    var ripeningStages: [Ripening] = ripeningsData
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }//: Loop
                }//: HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }//: VStack
        }//: Scroll
        .ignoresSafeArea(edges: .all)
    }
}

#Preview {
    RipeningStagesView(ripeningStages: ripeningsData)
}
