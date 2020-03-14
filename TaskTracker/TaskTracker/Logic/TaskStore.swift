//
//  TaskStore.swift
//  TaskTracker
//
//  Created by Саид Дагалаев on 24.02.2020.
//  Copyright © 2020 Саид Дагалаев. All rights reserved.
//

import Combine

class TaskStore: ObservableObject {
    @Published var prioritizedTasks = [
        PrioritizedTasks(
            status: .сегодня,
            tasks: [Task(name: "Доделать задание для собеса", desc: "Внедрить CoreData, Combine")]
        ),
        PrioritizedTasks(
            status: .процесс,
            tasks: [Task(name: "Проект по iOS", desc: "Описание проекта")]
        ),
        PrioritizedTasks(
            status: .новая,
            tasks: [Task(name: "Подготовить доклад", desc: "на тему AR")]
        ),
        PrioritizedTasks(
            status: .потом,
            tasks: [Task(name: "Прочесть книгу", desc: "по функциональному программированию")]
        ),
    ]
    
    func getIndex(for priority: Task.Status) -> Int {
        prioritizedTasks.firstIndex { $0.status == priority }!
    }
}
