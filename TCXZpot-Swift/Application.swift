//
//  Application.swift
//  TCXZpot
//
//  Created by Tomás Ruiz López on 22/5/17.
//  Copyright © 2017 SweetZpot. All rights reserved.
//

import Foundation

public class Application : AbstractSource {
    fileprivate let name : String
    fileprivate let build : Build
    fileprivate let languageID : String
    fileprivate let partNumber : String
    
    public init(name : String, build : Build, languageID : String, partNumber : String) {
        self.name = name
        self.build = build
        self.languageID = languageID
        self.partNumber = partNumber
    }
    
    override func tcxType() -> String {
        return "Application_t"
    }
    
    override public func serialize(to serializer: Serializer) {
        serializer.print(line: "<Name>\(name)</Name>")
        build.serialize(to: serializer)
        serializer.print(line: "<LangID>\(languageID)</LangID>")
        serializer.print(line: "<PartNumber>\(partNumber)</PartNumber>")
    }
}