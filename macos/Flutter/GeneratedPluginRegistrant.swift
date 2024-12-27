//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

import file_selector_macos
<<<<<<< HEAD
import firebase_core
import path_provider_foundation
import sqflite_darwin
=======
import path_provider_foundation
import sqflite
>>>>>>> 36bfc066338506fe88fd3159317a979c9b786683
import url_launcher_macos
import video_player_avfoundation

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  FileSelectorPlugin.register(with: registry.registrar(forPlugin: "FileSelectorPlugin"))
<<<<<<< HEAD
  FLTFirebaseCorePlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseCorePlugin"))
=======
>>>>>>> 36bfc066338506fe88fd3159317a979c9b786683
  PathProviderPlugin.register(with: registry.registrar(forPlugin: "PathProviderPlugin"))
  SqflitePlugin.register(with: registry.registrar(forPlugin: "SqflitePlugin"))
  UrlLauncherPlugin.register(with: registry.registrar(forPlugin: "UrlLauncherPlugin"))
  FVPVideoPlayerPlugin.register(with: registry.registrar(forPlugin: "FVPVideoPlayerPlugin"))
}
