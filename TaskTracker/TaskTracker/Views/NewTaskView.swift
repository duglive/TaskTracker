//
//  NewTaskView.swift
//  TaskTracker
//
//  Created by Саид Дагалаев on 24.02.2020.
//  Copyright © 2020 Саид Дагалаев. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    var taskStore: TaskStore
    @State var text = ""
    @State var description = ""
    @State var priority: Task.Status = .потом
    @State public var date = Date()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form {
            TextField("Имя задачи", text: $text)
            TextField("Описание", text: $description)
            DatePicker("Дата (beta)", selection: $date, displayedComponents: .date)
            VStack {
                Text("Статус")
                Picker("Статусы", selection: $priority.caseIndex) {
                    ForEach(Task.Status.allCases.indices){ priorityIndex in
                        Text(Task.Status.allCases[priorityIndex].rawValue.capitalized)
                            .tag(priorityIndex)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            Button("Добавить задачу") {
                let priorityIndex = self.taskStore.getIndex(for: self.priority)
                self.taskStore.prioritizedTasks[priorityIndex].tasks.append(
                    Task(name: self.text, desc: self.description)
                )
                self.presentationMode.wrappedValue.dismiss()
            }.disabled(text.isEmpty)
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(taskStore: TaskStore())
    }
}
