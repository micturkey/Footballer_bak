//
//  TeamRankModel.swift
//  Footballer
//
//  Created by Ethan Zhai on 2017/10/14.
//  Copyright © 2017年 Ethan Zhai. All rights reserved.
//

import Foundation
struct Results: Codable{
    struct Team: Codable{
        var goals_against: String
        var goals_pro: String
        var last_rank: String
        var matches_draw: String
        var matches_lost: String
        var matches_total: String
        var matches_won: String
        var points: String
        var rank: String
        var team_id: String
        var team_logo: String
        var team_name: String
        var season: String
    }
    var results: [Team]
    init() {
        results = []
    }
}
