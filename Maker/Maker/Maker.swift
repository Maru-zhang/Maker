//
//  Maker.swift
//  Maker
//
//  Created by Maru on 2017/5/10.
//  Copyright © 2017年 Souche. All rights reserved.
//

import Foundation

let temple = "IyBkaXNhYmxlZF9ydWxlczogIyBydWxlIGlkZW50aWZpZXJzIHRvIGV4Y2x1ZGUgZnJvbSBydW5uaW5nCiMgICAtIGNvbG9uCiMgICAtIGNvbW1hCiMgICAtIGNvbnRyb2xfc3RhdGVtZW50CiMgb3B0X2luX3J1bGVzOiAjIHNvbWUgcnVsZXMgYXJlIG9ubHkgb3B0LWluCiMgICAtIGVtcHR5X2NvdW50CiMgRmluZCBhbGwgdGhlIGF2YWlsYWJsZSBydWxlcyBieSBydW5uaW5nOgojIHN3aWZ0bGludCBydWxlcwojIGluY2x1ZGVkOiAjIHBhdGhzIHRvIGluY2x1ZGUgZHVyaW5nIGxpbnRpbmcuIGAtLXBhdGhgIGlzIGlnbm9yZWQgaWYgcHJlc2VudC4KIyAgIC0gR2FuawojIGV4Y2x1ZGVkOiAjIHBhdGhzIHRvIGlnbm9yZSBkdXJpbmcgbGludGluZy4gVGFrZXMgcHJlY2VkZW5jZSBvdmVyIGBpbmNsdWRlZGAuCiMgICAtIFBvZHMKIyAgIC0gR2Fuay9WZW5kb3JzCgojIGNvbmZpZ3VyYWJsZSBydWxlcyBjYW4gYmUgY3VzdG9taXplZCBmcm9tIHRoaXMgY29uZmlndXJhdGlvbiBmaWxlCiMgYmluYXJ5IHJ1bGVzIGNhbiBzZXQgdGhlaXIgc2V2ZXJpdHkgbGV2ZWwKIyBmb3JjZV9jYXN0OiB3YXJuaW5nICMgaW1wbGljaXRseQojIGZvcmNlX3RyeToKIyAgIHNldmVyaXR5OiB3YXJuaW5nICMgZXhwbGljaXRseQojIHJ1bGVzIHRoYXQgaGF2ZSBib3RoIHdhcm5pbmcgYW5kIGVycm9yIGxldmVscywgY2FuIHNldCBqdXN0IHRoZSB3YXJuaW5nIGxldmVsCiMgaW1wbGljaXRseQojIGxpbmVfbGVuZ3RoOiAxMjAKIyB0aGV5IGNhbiBzZXQgYm90aCBpbXBsaWNpdGx5IHdpdGggYW4gYXJyYXkKIyB0eXBlX2JvZHlfbGVuZ3RoOgojICAgLSAzMDAgIyB3YXJuaW5nCiMgICAtIDQwMCAjIGVycm9yCiMgb3IgdGhleSBjYW4gc2V0IGJvdGggZXhwbGljaXRseQojIGZpbGVfbGVuZ3RoOgojICAgd2FybmluZzogNTAwCiMgICBlcnJvcjogMTIwMDAKIyBjdXN0b21fcnVsZXM6CiMgICBwaXJhdGVzX2JlYXRfbmluamFzOiAjIHJ1bGUgaWRlbnRpZmllcgojICAgICBpbmNsdWRlZDogIi4qLnN3aWZ0IiAjIHJlZ2V4IHRoYXQgZGVmaW5lcyBwYXRocyB0byBpbmNsdWRlIGR1cmluZyBsaW50aW5nLiBvcHRpb25hbC4KIyAgICAgZXhjbHVkZWQ6ICIuKlRlc3Quc3dpZnQiICMgcmVnZXggdGhhdCBkZWZpbmVzIHBhdGhzIHRvIGV4Y2x1ZGUgZHVyaW5nIGxpbnRpbmcuIG9wdGlvbmFsCiMgICAgIG5hbWU6ICJQaXJhdGVzIEJlYXQgTmluamFzIiAjIHJ1bGUgbmFtZS4gb3B0aW9uYWwuCiMgICAgIHJlZ2V4OiAiKFtuLE5daW5qYSkiICMgbWF0Y2hpbmcgcGF0dGVybgojICAgICBtYXRjaF9raW5kczogIyBTeW50YXhLaW5kcyB0byBtYXRjaC4gb3B0aW9uYWwuCiMgICAgICAgLSBjb21tZW50CiMgICAgICAgLSBpZGVudGlmaWVyCiMgICAgIG1lc3NhZ2U6ICJQaXJhdGVzIGFyZSBiZXR0ZXIgdGhhbiBuaW5qYXMuIiAjIHZpb2xhdGlvbiBtZXNzYWdlLiBvcHRpb25hbC4KIyAgICAgc2V2ZXJpdHk6IGVycm9yICMgdmlvbGF0aW9uIHNldmVyaXR5LiBvcHRpb25hbC4KIyAgIG5vX2hpZGluZ19pbl9zdHJpbmdzOgojICAgICByZWdleDogIihyeF9kaXNwb3NlQmFnKSIKIyAgICAgbWF0Y2hfa2luZHM6IGtleXdvcmQKIyBuYW1pbmcgcnVsZXMgY2FuIHNldCB3YXJuaW5ncy9lcnJvcnMgZm9yIG1pbl9sZW5ndGggYW5kIG1heF9sZW5ndGgKIyBhZGRpdGlvbmFsbHkgdGhleSBjYW4gc2V0IGV4Y2x1ZGVkIG5hbWVzCiMgdHlwZV9uYW1lOgojICAgbWluX2xlbmd0aDogMiAjIG9ubHkgd2FybmluZwojICAgbWF4X2xlbmd0aDogIyB3YXJuaW5nIGFuZCBlcnJvcgojICAgICB3YXJuaW5nOiA0MAojICAgICBlcnJvcjogMTAwMAojICAgZXhjbHVkZWQ6IGlQaG9uZSAjIGV4Y2x1ZGVkIHZpYSBzdHJpbmcKIyBpZGVudGlmaWVyX25hbWU6CiMgICBtaW5fbGVuZ3RoOiAjIG9ubHkgbWluX2xlbmd0aAojICAgICBlcnJvcjogMSAjIG9ubHkgZXJyb3IKIyAgIGV4Y2x1ZGVkOiAjIGV4Y2x1ZGVkIHZpYSBzdHJpbmcgYXJyYXkKIyAgICAgLSBpZAojICAgICAtIFVSTAojICAgICAtIEdsb2JhbEFQSUtleQojIHJlcG9ydGVyOiAieGNvZGUiICMgcmVwb3J0ZXIgdHlwZSAoeGNvZGUsIGpzb24sIGNzdiwgY2hlY2tzdHlsZSwganVuaXQsIGh0bWwsIGVtb2ppKQo="

enum OutputType {

    case error
    case standard
}

enum ParameterType: String {

    case swiftlintyml = "y"
    case podfile = "p"
    case unkown

    init(raw: String) {
        switch raw {
        case "y":
            self = .swiftlintyml
            break
        case "p":
            self = .podfile
        default:
            self = .unkown
            break
        }
    }
}

final class ConsoleIO {

    func fetchOption(value: String) -> (option: ParameterType, value: String) {
        return (ParameterType(raw: value), value)
    }

    func logUsage() {

        let executableName = (CommandLine.arguments[0] as NSString).lastPathComponent
        print("Maker Usage:")
        print("🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡")
        print("\(executableName) -y: aotocreate a .swiftlint.yml file with template")
        print("\(executableName) -p: autocreate a Podfile file with template")
        print("❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️")
        print("Enjoy your coding time!")

    }

    func write(message: String, to: OutputType = .standard) {

        switch to {
        case .standard:
            print("\u{001B}[;m\(message)")
        case .error:
            fputs("\u{001B}[0;31m\(message)\n", stderr)
        }
    }
}

final class Maker {

    let consoleIO = ConsoleIO()

    // MARK: - Public Method

    func staticMode() {

        let argCount = CommandLine.argc
        let argument = CommandLine.arguments[1]

        guard argCount == 2 else {
            consoleIO.write(message: "Sorry! you input invaild params count.", to: .error)
            return
        }

        let (param, _) = consoleIO.fetchOption(value: argument.substring(from: argument.characters.index(argument.startIndex, offsetBy: 1)))
        switch param {
        case .podfile:
            createPodFile()
            break
        case .swiftlintyml:
            createYML()
            break
        default:
            consoleIO.write(message: "Sorry! you input unrecognized params")
        }
    }
}

extension Maker {

    // MARK: - Business Logic

    fileprivate func createYML() {

        let currentPath = FileManager.default.currentDirectoryPath

        if FileManager.default.createFile(atPath: "\(currentPath)/.swiftlint.yml", contents: Data(base64Encoded: temple), attributes: nil) {
            consoleIO.write(message: "create .swiftlint.yml success.", to: .standard)
        }else {
            consoleIO.write(message: "create .swiftlint.yml fail.", to: .error)
        }
    }

    fileprivate func createPodFile() {
        consoleIO.write(message: "Sorry! Not support yet.", to: .error)
    }
}
