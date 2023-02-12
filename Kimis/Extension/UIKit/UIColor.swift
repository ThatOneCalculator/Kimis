//
//  UIColor.swift
//  mTale
//
//  Created by Lakr Aream on 2022/3/31.
//

import UIKit

private var accentColorCache: UIColor?

extension UIColor {
    static var accent: UIColor {
        if let cache = accentColorCache {
            return cache
        }
        let defaultAccent = UIColor(named: "AccentColor") ?? .systemPurple
        var light: UIColor = defaultAccent
        var dark: UIColor = defaultAccent
        if let lightHex = Int(AppConfig.current.accentColorLight, radix: 16),
           let get = UIColor(hex: lightHex)
        {
            light = get
        }
        if let darkHex = Int(AppConfig.current.accentColorDark, radix: 16),
           let get = UIColor(hex: darkHex)
        {
            dark = get
        }
        let ans = UIColor(light: light, dark: dark)
        accentColorCache = ans
        return ans
    }

    static var randomAsPudding: UIColor {
        let color: [UIColor] = [
            #colorLiteral(red: 0.9197183251, green: 0.4353122711, blue: 0.5726342201, alpha: 1), #colorLiteral(red: 0.76744169, green: 0.6546748877, blue: 0.9076345563, alpha: 1), #colorLiteral(red: 0.6134753823, green: 0.8134765625, blue: 0.8489770293, alpha: 1), #colorLiteral(red: 0.9660903811, green: 0.7564968467, blue: 0.4678468704, alpha: 1), #colorLiteral(red: 0.9234064221, green: 0.7379429936, blue: 0.728762567, alpha: 1), #colorLiteral(red: 0.1927609444, green: 0.4528821707, blue: 0.5598551631, alpha: 1), #colorLiteral(red: 0.880181253, green: 0.8702578545, blue: 0.9561340213, alpha: 1),
        ]
        return color.randomElement() ?? .white
    }

    static var platformBackground: UIColor {
        .init(light: .white, dark: UIColor(hex: 0x141414)!)
    }

    static var systemBlackAndWhite: UIColor {
        .init(light: .black, dark: .white)
    }

    static var systemWhiteAndBlack: UIColor {
        .init(light: .white, dark: .black)
    }

    static var separator: UIColor {
        .systemGray5
    }

    static var placeholder: UIColor {
        .systemGray5.withAlphaComponent(0.5)
    }
}

extension UIColor {
    convenience init?(red: Int, green: Int, blue: Int) {
        guard red >= 0, red <= 255 else { return nil }
        guard green >= 0, green <= 255 else { return nil }
        guard blue >= 0, blue <= 255 else { return nil }

        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }

    convenience init?(hex: Int) {
        self.init(
            red: (hex >> 16) & 0xFF,
            green: (hex >> 8) & 0xFF,
            blue: hex & 0xFF
        )
    }
}
