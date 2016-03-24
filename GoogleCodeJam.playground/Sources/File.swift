// Google Code Jam 2016 - Swift Quick Starter Kit
// Author Richard GUERCI

import Foundation


public class File {
	
	var inFileURL : NSURL?
	var outFileURL : NSURL?
	
	// Create NSURLs from a filename
	public init?(fileName:String) {
		inFileURL = URLFromDownloadDirectory(fileName, fileExtension: "in")
		
		if !exists() { return nil }
		
		outFileURL = URLFromDownloadDirectory(fileName, fileExtension: "out")
	}
	
	// Read data from the file inFileURL
	public func read() -> String {
		return readFile(inFileURL!)
	}
	
	// Write data to the file outFileURL
	public func write(data: String) {
		if let _ = outFileURL {
			writeToFile(outFileURL!, data: data)
			print("Done: out file is ready to upload")
		}
	}
	
	// Check if file exists
	func exists() -> Bool {
		return NSFileManager.defaultManager().fileExistsAtPath((inFileURL!.path)!)
	}
	
	// Get NSURL from fileName.fileExtension located within Downloads Directory
	func URLFromDownloadDirectory(fileName:String, fileExtension:String) ->  NSURL {
		let DocumentDirURL = try! NSFileManager.defaultManager().URLForDirectory(.DownloadsDirectory, inDomain: .UserDomainMask, appropriateForURL: nil, create: false)
		
		let fileURL = DocumentDirURL.URLByAppendingPathComponent(fileName).URLByAppendingPathExtension(fileExtension)
		
		return fileURL
	}
	
	// Get data from NSURL
	func readFile(url:NSURL) -> String {
		var result = ""
		
		do {
			result = try String(contentsOfURL: url)
		} catch let error as NSError {
			print("Failed reading from URL: \(url), Error: " + error.localizedDescription)
		}
		
		return result
	}
	
	// Write data to file
	func writeToFile(url:NSURL, data:String) {
		do {
			try data.writeToURL(url, atomically: true, encoding: NSUTF8StringEncoding)
		} catch let error as NSError {
			print("Failed writing to URL: \(url), Error: " + error.localizedDescription)
		}
	}
	
}
