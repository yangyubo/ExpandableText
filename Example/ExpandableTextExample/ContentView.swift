//
//  ContentView.swift
//  ExpandableTextExample
//
//  Created by ned on 25/02/23.
//

import SwiftUI
import ExpandableText

private let loremIpsum = #"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."#

private let loremIpsumMarkdown = #"Lorem *ipsum* dolor sit amet, `consectetur` **adipiscing** elit, sed do eiusmod tempor `incididunt` ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. **Duis** aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."#

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ExpandableText(loremIpsum)
                    .border(.red)
                
                ExpandableText(try! AttributedString(markdown: loremIpsumMarkdown))
                    .border(.red)
                
                ExpandableText(loremIpsum)
                    .border(.red)
                    .environment(\.layoutDirection, .rightToLeft)
                
                ExpandableText(loremIpsum)
                    .lineLimit(4)
                    .moreButtonText("read more")
                    .moreButtonColor(.red)
                    .expandAnimation(.easeInOut(duration: 2))
                    .trimMultipleNewlinesWhenTruncated(false)
                    .border(.red)
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(.secondary)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        Form {
            Section {
                Text("In section")
            } footer: {
                ExpandableText(try! AttributedString(markdown: loremIpsumMarkdown))
            }
        }
    }
}
