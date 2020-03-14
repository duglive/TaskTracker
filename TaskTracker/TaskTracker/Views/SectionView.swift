//
//  SectionView.swift
//  TaskTracker
//
//  Created by Саид Дагалаев on 24.02.2020.
//  Copyright © 2020 Саид Дагалаев. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    @Binding var prioritizedTasks: TaskStore.PrioritizedTasks
    
    var body: some View {
        Section(
        header: Text("\(prioritizedTasks.status.rawValue.capitalized)")) {
            ForEach(prioritizedTasks.tasks) {
                index in
                RowView(task: self.$prioritizedTasks.tasks[index])
            }
            .onMove {
                sourceIdx, destinationIdx in
                self.prioritizedTasks.tasks.move(
                    fromOffsets: sourceIdx,
                    toOffset: destinationIdx)
            }
            .onDelete {
                indexSet in self.prioritizedTasks.tasks.remove(atOffsets: indexSet)
            }
        }
    }
}
