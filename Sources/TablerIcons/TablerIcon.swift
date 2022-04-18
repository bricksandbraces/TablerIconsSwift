//
//  TablerIcon.swift
//  Hejmo
//
//  Created by Hendrik Ulbrich on 18.04.22.
//

import SwiftUI

public struct TablerIcon: View {
    public enum IconStroke: String {
        case ultrathin
        case thin
        case regular = ""
        case medium
        case semibold
        case bold
        case heavy

        public func toFontName() -> String {
            "tabler-icons\(!rawValue.isEmpty ? "-\(rawValue)" : rawValue)"
        }
    }

    public var icon: TablerIconToken
    public var size: CGFloat
    public var stroke: IconStroke
    
    public init(_ icon: TablerIconToken, size: CGFloat, stroke: IconStroke) {
        self.icon = icon
        self.size = size
        self.stroke = stroke
    }
    
    public init (_ icon: TablerIconToken, size: CGFloat) {
        self.init(icon, size: size, stroke: .regular)
    }
    
    public init (_ icon: TablerIconToken, stroke: IconStroke) {
        self.init(icon, size: 32, stroke: stroke)
    }
    
    
    public init (_ icon: TablerIconToken) {
        self.init(icon, size: 32, stroke: .regular)
    }

    public var body: some View {
        Text(TablerIconToken.iconTokenMap[icon.rawValue] ?? TablerIconToken.iconTokenMap[TablerIconToken.questionMark.rawValue]!)
            .font(.custom(stroke.toFontName(), size: size))
    }
}

struct CustomIcon_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading) {
            HStack {
                TablerIcon(.twoFa, size: 16)
                Spacer()
            }
            HStack {
                TablerIcon(.twoFa, size: 24)
                Spacer()
            }
            HStack {
                TablerIcon(.twoFa, size: 32)
                Spacer()
            }
            HStack {
                TablerIcon(.twoFa, size: 42)
                Spacer()
            }
            HStack {
                TablerIcon(.twoFa, size: 64)
                Spacer()
            }
            VStack {
                HStack {
                    TablerIcon(.threeDRotate, size: 16)
                    Spacer()
                }
                HStack {
                    TablerIcon(.threeDRotate, size: 24)
                    Spacer()
                }
                HStack {
                    TablerIcon(.threeDRotate, size: 32)
                    Spacer()
                }
                HStack {
                    TablerIcon(.threeDRotate, size: 42)
                    Spacer()
                }
                HStack {
                    TablerIcon(.threeDRotate, size: 64)
                    Spacer()
                }
            }
            Spacer()
        }
    }
}
