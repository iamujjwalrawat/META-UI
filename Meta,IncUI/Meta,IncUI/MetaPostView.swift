//
//  FBPostView.swift
//  facebookUi
//
//  Created by Ujjwal Rawat on 28/07/22.
//

import Foundation
import SwiftUI

struct MetaPost: View {

    @State var isLiked: Bool = false
@State var isShared: Bool = false
    
    let model: MetaPostModel

    var body: some View {
        VStack {
            HStack {
                Image(model.imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(25)
                VStack {
                    HStack {
                        Text(model.name)
                            .foregroundColor(Color.blue)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }

                    HStack {
                        Text("12 minutes ago")
                            .foregroundColor(Color(.secondaryLabel))
                        Spacer()
                    }
                }
                Spacer()
            }

            Spacer()

            HStack {
                Text(model.post)
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }

            Spacer()

            HStack {
                Button(action: {
                    isLiked.toggle()
                }, label: {
                    Image(systemName: isLiked ? "suit.heart.fill" : "suit.heart")
                        .accentColor(.pink)

                })

               
                Spacer()

                Button(action: {

                }, label: {
                    Text("Comment")
                })
                Spacer()

                Button(action: {
                    isShared.toggle()
                }, label: {
                    Image(systemName: isShared ? "arrowshape.turn.up.forward.circle.fill" : "arrowshape.turn.up.forward.circle")
                        .accentColor(.black)
                })

            }
            .padding()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(7)
    }
}
