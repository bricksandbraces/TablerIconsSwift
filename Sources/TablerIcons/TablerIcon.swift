//
//  TablerIcon.swift
//  Hejmo
//
//  Created by Hendrik Ulbrich on 18.04.22.
//

import SwiftUI

public struct TablerIcon: View {
    enum IconStroke: String {
        case ultrathin
        case thin
        case regular = ""
        case medium
        case semibold
        case bold
        case heavy

        func toFontName() -> String {
            "tabler-icons\(!rawValue.isEmpty ? "-\(rawValue)" : rawValue)"
        }
    }

    var icon: TablerIconToken
    var size: CGFloat = 32
    var stroke: IconStroke = .regular

    public var body: some View {
        Text(icon.rawValue)
            .font(.custom(stroke.toFontName(), size: size))
    }
}

struct CustomIcon_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading) {
            HStack {
                TablerIcon(icon: .twoFa, size: 16)
                Spacer()
            }
            HStack {
                TablerIcon(icon: .twoFa, size: 24)
                Spacer()
            }
            HStack {
                TablerIcon(icon: .twoFa, size: 32)
                Spacer()
            }
            HStack {
                TablerIcon(icon: .twoFa, size: 42)
                Spacer()
            }
            HStack {
                TablerIcon(icon: .twoFa, size: 64)
                Spacer()
            }
            VStack {
                HStack {
                    TablerIcon(icon: .threeDRotate, size: 16)
                    Spacer()
                }
                HStack {
                    TablerIcon(icon: .threeDRotate, size: 24)
                    Spacer()
                }
                HStack {
                    TablerIcon(icon: .threeDRotate, size: 32)
                    Spacer()
                }
                HStack {
                    TablerIcon(icon: .threeDRotate, size: 42)
                    Spacer()
                }
                HStack {
                    TablerIcon(icon: .threeDRotate, size: 64)
                    Spacer()
                }
            }
            Spacer()
        }
    }
}
