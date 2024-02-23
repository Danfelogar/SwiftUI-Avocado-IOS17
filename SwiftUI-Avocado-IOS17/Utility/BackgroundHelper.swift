//
//  BackgroundHelper.swift
//  SwiftUI-Avocado-IOS17
//
//  Created by Daniel Felipe on 22/02/24.
//

import SwiftUI

struct BackgroundHelper: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        DispatchQueue.main.async {
            // find first superview with color and make it transparent
            var parent = view.superview
            repeat {
                if parent?.backgroundColor != nil {
                    parent?.backgroundColor = UIColor.clear
                    break
                }
                parent = parent?.superview
            } while (parent != nil)
        }
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}
#Preview {
    BackgroundHelper()
}
