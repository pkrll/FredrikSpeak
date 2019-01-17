//
//  main.swift
//  FredrikSpeak
//
//  Created by Ardalan Samimi on 2019-01-17.
//
import AppKit

print("Please input string to convert to FredrikSpeak:")

let vowelsLower = "aeiouåä"
let vowelsUpper = "AEIOUÅÄ"

let line = readLine() ?? ""

let replaced = line.map { (char) -> Character in
	if vowelsUpper.contains(char) { return "Ö" }
	if vowelsLower.contains(char) { return "ö" }

	return char
}

if #available(macOS 10.13, *) {
	let pasteboard = NSPasteboard.init(name: .general)
	pasteboard.declareTypes([.string], owner: nil)
	pasteboard.setString(String(replaced), forType: .string)
	print("The string has been Fredrikified and copied to the clipboard!")
} else {
  print(String(replaced))
}
