//
//  ContentView.swift
//  facebookUi
//
//  Created by Ujjwal Rawat on 28/07/22.
//


import SwiftUI

struct MetaPostModel: Hashable {
    let name: String
    let post: String
    let imageName: String
}

struct ContentView: View {

    @Binding var text: String

    let stories = ["story1", "story2", "story3","story1", "story2", "story3"]

    let posts: [MetaPostModel] = [
        MetaPostModel(name: "Mark Zuckerberg",
                    post: "Hello ji",
                    imageName: "person1"),
        MetaPostModel(name: "Jeff Bezos",
                    post: "Namaskar ji",
                    imageName: "person2"),
        MetaPostModel(name: "Bill Gates",
                    post: "Hello",
                    imageName: "person3")
    ]

    let MetaBlue = UIColor(red: 23/255.0,
                               green: 120/255.0,
                               blue: 242/255.0,
                               alpha: 1)

    var body: some View {
        VStack {
            HStack {
                Text("Meta,Inc.")
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(Color(MetaBlue))
                Image("meta")
                    .resizable()
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(Color(.secondaryLabel))

                Spacer()
                
                Image(systemName: "person.crop.square")
                    .resizable()
                    .frame(width: 65, height: 65, alignment: .center)
                    .foregroundColor(Color(.secondaryLabel))
                    .padding(5)
             
            }
            .padding()

            TextField("Search...", text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(13)
                .padding(.horizontal, 15)

            ZStack {
                Color(.secondarySystemBackground)

                ScrollView(.vertical) {
                    VStack {
                        StoryView(stories: stories)

                        ForEach(posts, id: \.self) { model in
                            MetaPost(model: model)
                            Spacer()
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
    }
}
