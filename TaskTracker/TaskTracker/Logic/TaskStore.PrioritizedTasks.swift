//
//  TaskStore.PrioritizedTasks.swift
//  TaskTracker
//
//  Created by Саид Дагалаев on 24.02.2020.
//  Copyright © 2020 Саид Дагалаев. All rights reserved.
//

extension TaskStore {
  struct PrioritizedTasks {
    let status: Task.Status
    var tasks: [Task]
  }
}

extension TaskStore.PrioritizedTasks: Identifiable {
  var id: Task.Status { status }
}
