//
//  SearchView.swift
//  GithubResearch
//
//  Created by Sélim Chiki on 17/06/2019.
//  Copyright © 2019 Sélim Chiki. All rights reserved.
//

import SwiftUI

struct SearchView : View {
    
    @State private var query: String = "Swift"
    @EnvironmentObject var repoStore: ReposStore
    
    var body: some View {
        NavigationView {
            List {
                TextField($query, placeholder: Text("Type something..."), onCommit: fetch)
                ForEach(repoStore.store) { repo in
                    RepoRow(repo: repo)
                }
            }.navigationBarTitle(Text("Search"))
        }.onAppear(perform: fetch)
    }
    
    private func fetch() {
        repoStore.fetch(matching: query)
    }
}

#if DEBUG
struct SearchView_Previews : PreviewProvider {
    static var previews: some View {
        SearchView(body: <#Environment<some View>#>)
    }
}
#endif
