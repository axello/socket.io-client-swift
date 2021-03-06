Pod::Spec.new do |s|
  s.name         = "Socket.IO-Client-Swift"
  s.module_name  = "SocketIO"
  s.version      = "10.2.0"
  s.summary      = "Socket.IO-client for iOS and OS X"
  s.description  = <<-DESC
                   Socket.IO-client for iOS and OS X.
                   Supports ws/wss/polling connections and binary.
                   For socket.io 2.0+ and Swift.
                   DESC
  s.homepage     = "https://github.com/socketio/socket.io-client-swift"
  s.license      = { :type => 'MIT' }
  s.author       = { "Erik" => "nuclear.ace@gmail.com" }
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.source       = { :git => "https://github.com/socketio/socket.io-client-swift.git", :tag => 'v10.2.0' }
  s.source_files  = "Source/**/*.swift"
  s.libraries = 'z'
  s.preserve_paths = 'zlib/*'
  s.requires_arc = true
  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '3.1',
    'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/Socket.IO-Client-Swift/zlib'
  }
  # s.dependency 'Starscream', '~> 0.9' # currently this repo includes Starscream swift files
end
