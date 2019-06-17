//
//  RepoRow.swift
//  GithubResearch
//
//  Created by Sélim Chiki on 17/06/2019.
//  Copyright © 2019 Sélim Chiki. All rights reserved.
//

import SwiftUI

struct RepoRow : View {
    
    let repo: Repo
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(repo.name)
                .font(.headline)
            Text(repo.description)
                .font(.subheadline)
        }
    }
}

#if DEBUG
struct RepoRow_Previews : PreviewProvider {
    static var previews: some View {
        RepoRow(repo: Repo(id: 1, name: "Hello", description: "Hello World"))
    }
}
#endif
