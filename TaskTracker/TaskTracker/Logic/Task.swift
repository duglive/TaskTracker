//
//  Task.swift
//  TaskTracker
//
//  Created by Саид Дагалаев on 24.02.2020.
//  Copyright © 2020 Саид Дагалаев. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()

    var name: String
    var desc: String
    var completed = false
}
