//
//  main.swift
//  Maker
//
//  Created by Maru on 2017/5/10.
//  Copyright © 2017年 Souche. All rights reserved.
//

import Foundation

let maker = Maker()

if CommandLine.argc < 2 {
    maker.consoleIO.logUsage()
} else {
    maker.staticMode()
}
