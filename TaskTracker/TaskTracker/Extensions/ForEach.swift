//
//  ForEach.swift
//  TaskTracker
//
//  Created by Саид Дагалаев on 24.02.2020.
//  Copyright © 2020 Саид Дагалаев. All rights reserved.
//

import SwiftUI

public extension ForEach where Content: View {
  init<Base: RandomAccessCollection>(_ base: Base, @ViewBuilder content: @escaping (Base.Index) -> Content
  )
  where
    Data == IndexedCollection<Base>,
    Base.Element: Identifiable,
    ID == Base.Element.ID
  {
    self.init(IndexedCollection(base), id: \.element.id) {
      index, _ in content(index)
    }
  }
}
