Pod::Spec.new do |s|
  s.name             = 'NXCDLivenessSDK'
  s.version          = '1.0.9'
  s.summary          = 'SDK for NXCD Liveness API.'
  s.description      = <<-DESC
SDK for NXCD Liveness API and Document detection API.
                       DESC
  s.homepage         = 'https://github.com/nextcodebr/liveness-sdk-ios'
  s.license          = 'MIT'
  s.author           = { "Spencer Müller Diniz" => "spencer.diniz@rarolabs.com.br" }
  s.source           = { :git => "git@github.com:nextcodebr/liveness-sdk-ios.git", :tag => "#{s.version}" }
  s.swift_version    = '5.0'
  s.static_framework = true
  s.ios.deployment_target = '15.0'
  s.source_files     = 'NXCDLivenessSDK/Classes/**/*'
  s.resource_bundle  = {'NXCDLivenessSDK' => ['NXCDLivenessSDK/Assets/*.xcassets']}
  s.frameworks       = 'UIKit'
  s.dependency 'GoogleMLKit/FaceDetection'
  s.dependency 'GoogleMLKit/ObjectDetection'
end
