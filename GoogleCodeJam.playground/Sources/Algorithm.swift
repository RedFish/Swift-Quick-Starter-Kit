// Google Code Jam 2016 - Swift Quick Starter Kit
// Author Richard GUERCI

import Foundation

// Solution from stackoverflow : http://tiny.cc/zvcbay
public class Algorithm {
	
	// Here is the function where you need to white your solution.
	public class func exec(inData:String) -> String {
		let startTime = NSDate()
		var outData = ""
		
		
		
		
		let lines = inData.characters.split{$0 == "\n"}.map(String.init)
		let N = Int(lines[0])
		
		for var i = 1 ; i <= N ; i += 1 {
			let words = lines[i].characters.split{$0 == " "}.map(String.init)
			outData += "Case #\(i): "
			for var j = words.count-1 ; j >= 0 ; j -= 1 {
				outData += words[j]
				if j != 0 { outData += " " }
			}
			outData += "\n"
		}
		
		
		
		
		
		// Print time execution and return result
		let endTime = NSDate()
		let interval = endTime.timeIntervalSinceDate(startTime)
		print("Executed in \(interval)")
		return outData
	}
	
}