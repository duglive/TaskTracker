//
//  TaskEditingView.swift
//  TaskTracker
//
//  Created by Саид Дагалаев on 24.02.2020.
//  Copyright © 2020 Саид Дагалаев. All rights reserved.
//

import SwiftUI

struct TaskEditingView: View {
    @Binding var task: Task
    
    var body: some View {
        Form {
            TextField("Имя", text: $task.name)
            TextField("Описание", text: $task.desc)
            
            Toggle("Выполнено", isOn: $task.completed)
        }
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView( task: .constant(Task(name: "Изменить имя", desc: "Изменить описание")))
    }
}
