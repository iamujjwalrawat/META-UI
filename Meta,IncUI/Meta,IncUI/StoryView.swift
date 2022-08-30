//
//  StoryView.swift
//  facebookUi
//
//  Created by Ujjwal Rawat on 28/07/22.
//

import SwiftUI
import Foundation

struct StoryView: View {
    let stories: [String]
        var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 3) {
                    ForEach(stories, id: \.self) { name in
                        Image(name)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 520, height: 310, alignment: .center)
                            .background(Color.black)
                            .clipped()
                    }
                }
                .padding()
            }
        }
    }
