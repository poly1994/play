import AVFoundation
import SwiftUI

@main
struct AprendoJugandoApp: App {
    init() {
        // Lets speechSynthesis play even if the hardware silent switch is on.
        let session = AVAudioSession.sharedInstance()
        do {
            try session.setCategory(.playback, mode: .spokenAudio, options: [.mixWithOthers])
            try session.setActive(true)
        } catch {
            // The web view may still speak with the default session.
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
