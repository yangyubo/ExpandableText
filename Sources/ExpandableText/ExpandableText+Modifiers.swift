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
    
    /**
     Sets the text to use for the "show more" button in the `ExpandableText` instance.
     - Parameter moreText: The text to use for the "show more" button. Defaults to `more`
     - Returns: A new `ExpandableText` instance with the specified "show more" button text applied.
     */
    func moreButtonText(_ moreText: String) -> Self {
        var copy = self
        copy.moreButtonText = moreText
        return copy
    }
    
    /**
     Sets the color to use for the "show more" button in the `ExpandableText` instance.
     - Parameter color: The color to use for the "show more" button. Defaults to `accentColor`
     - Returns: A new `ExpandableText` instance with the specified "show more" button color applied.
     */
    func moreButtonColor(_ color: Color) -> Self {
        var copy = self
        copy.moreButtonColor = color
        return copy
    }
    
    /**
     Sets the font to use for the "show more" button in the `ExpandableText` instance.
     - Parameter font: The font to use for the "show more" button. Defaults to the same font as the text
     - Returns: A new `ExpandableText` instance with the specified "show more" button font applied.
     */
    func moreButtonFont(_ font: Font) -> Self {
        var copy = self
        copy.moreButtonFont = font
        return copy
    }
    
    /**
     Sets the animation to use when expanding the `ExpandableText` instance.
     - Parameter animation: The animation to use for the expansion. Defaults to `default`
     - Returns: A new `ExpandableText` instance with the specified expansion animation applied.
     */
    func expandAnimation(_ animation: Animation) -> Self {
        var copy = self
        copy.expandAnimation = animation
        return copy
    }
    
}
