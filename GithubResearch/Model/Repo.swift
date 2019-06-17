//
//  Repo.swift
//  GithubResearch
//
//  Created by Sélim Chiki on 17/06/2019.
//  Copyright © 2019 Sélim Chiki. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct Repo: Decodable, Identifiable {
    var id: Int
    let name: String
    let description: String
}
