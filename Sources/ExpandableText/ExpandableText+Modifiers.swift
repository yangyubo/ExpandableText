//
//  ExpandableText+Modifiers.swift
//  
//
//  Created by ned on 25/02/23.
//

import Foundation
import SwiftUI

public extension ExpandableText {
    
    /**
     Sets the maximum number of lines to use for rendering the text in the `ExpandableText` instance.
     - Parameter limit: The maximum number of lines to use for rendering the text. Defaults to `3`
     - Returns: A new `ExpandableText` instance with the specified line limit applied.
     */
    func lineLimit(_ limit: Int) -> Self {
        var copy = self
        copy.lineLimit = limit
        return copy
    }
    
}
