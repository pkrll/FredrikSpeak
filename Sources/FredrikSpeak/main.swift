//
//  main.swift
//  FredrikSpeak
//
//  Created by Ardalan Samimi on 2019-01-17.
//

print("Please input string:")

let vowelsLower = "aeiouåäö"
let vowelsUpper = "AEIOUÅÄÖ"

let line = readLine() ?? ""

let replaced = line.map { (char) -> Character in
	if vowelsUpper.contains(char) { return "Ö" }
	if vowelsLower.contains(char) { return "ö" }

	return char
}

print(String(replaced))
