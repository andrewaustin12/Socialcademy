//
//  ErrorHandler.swift
//  Socialcademy
//
//  Created by andrew austin on 3/4/23.
//

import Foundation

@MainActor
protocol ErrorHandler: AnyObject {
    var error: Error? { get set }
}
extension ErrorHandler {
    func withErrorHandlingTask(perform action: @escaping () async throws -> Void) {
        Task {
            do {
                try await action()
            } catch {
                print("[\(Self.self)] Error: \(error)")
                self.error = error
            }
        }
    }
}
