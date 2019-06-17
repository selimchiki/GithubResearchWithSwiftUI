//
//  SearchResponse.swift
//  GithubResearch
//
//  Created by Sélim Chiki on 17/06/2019.
//  Copyright © 2019 Sélim Chiki. All rights reserved.
//

import Foundation

struct SearchResponse: Decodable {
    let items: [Repo]
}
