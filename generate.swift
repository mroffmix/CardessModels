//
//  generate.swift
//
//
//  Created by Ilya on 05.08.24.
//
import Foundation

func runCommand(_ command: String, arguments: [String]) throws {
  let task = Process()
  task.executableURL = URL(fileURLWithPath: command)
  task.arguments = arguments

  try task.run()
  task.waitUntilExit()
}

do {
  // Define relative paths
  let templatePath = "swaggen/Template.yaml"
  let destinationPath = "Sources/CardessModels/"
  let modelsPath = "Sources/CardessModels/Models/"
  let swaggerURL = "https://acceptance.sell.cardess.com/swagger/DealerAPI/swagger.json"

  // Step 1: Run SwagGen to generate the code
  try runCommand("/usr/local/bin/swaggen", arguments: [
    "generate",
    swaggerURL,
    "--template",
    templatePath,
    "--destination",
    destinationPath
  ])

  // Step 2: Delete specific files
  let fileManager = FileManager.default
  let enumerator = fileManager.enumerator(atPath: modelsPath)

  while let element = enumerator?.nextObject() as? String {
    if element.contains("yundai") {
      let filePath = modelsPath + element
      try fileManager.removeItem(atPath: filePath)
      print("Deleted \(filePath)")
    }
  }

  print("Generation and cleanup completed successfully.")
} catch {
  print("An error occurred: \(error)")
}
