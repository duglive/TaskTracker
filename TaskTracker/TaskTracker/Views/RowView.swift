//
//  RowView.swift
//  TaskTracker
//
//  Created by Саид Дагалаев on 24.02.2020.
//  Copyright © 2020 Саид Дагалаев. All rights reserved.
//

import SwiftUI

struct RowView: View {
    @Binding var task: Task
    let checkmark = Image(systemName: "checkmark")

    var body: some View {
        NavigationLink(
        destination: TaskEditingView(task: $task)) {
            if (task.completed) {
                checkmark
            } else {
                checkmark.hidden()
            }
            Text(task.name)
                .strikethrough(task.completed)
        }
    }
}


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView( task: .constant(Task(name: "ToDo: Name", desc: "ToDo: Desc")))
    }
}
