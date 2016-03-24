// Google Code Jam 2016 - Swift Quick Starter Kit
// Author Richard GUERCI

// Need help :
//		- Swift official doc	: http://tiny.cc/758aay
//		- Swift cheatsheet		: http://tiny.cc/448aay

// About this project
// This playground is a quick starter kit designed for swift developers who want to
// focus on problem solving of the Google Game Jam (there is no time to lose!).

// As an example, this file solves "Problem B. Reverse Words" from Google Code Jam
// Qualification Round Africa 2010 : http://tiny.cc/knabay

// Have fun and happy coding ;)


import Foundation


// Open in file named "B-small-practice.in" within Download directory.
// WARRNING: I recommand to use Chrome to download in files because
//			Safari renames downloaded in files with "txt" extension.
//			- in file extension is "in".
//			- if needed, this can be changed in File.swift
//				(View > Navigators > Show project navigator)
if let file = File(fileName: "B-large-practice") {
	// Read from file
	let inData = file.read()
	
	
	// Solve the problem here. 
	// It is recommanded to write your solution into the exec function, otherwise
	// playground execution may takes too long to end if you are working on large file.
	// This function can be found into Sources/Algorithm.swift (into the project navigator).
	var outData = Algorithm.exec(inData)
	
	
	// Write data into out file (fileName.out)
	outData // show outData before writting file
	file.write(outData)
}
else {
	print("Fail: file does not exist")
}


