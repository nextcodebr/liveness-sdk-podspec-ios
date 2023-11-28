Pod::Spec.new do |s|
    s.name             = 'NXCDLivenessSDK'
    s.version          = '1.0.4'
    s.summary          = 'SDK for NXCD Liveness API.'
    s.description      = <<-DESC
  SDK for NXCD Liveness API and Document detection API.
                         DESC
    s.homepage         = 'https://github.com/nextcodebr/liveness-sdk-ios'
    s.license          = { :type => 'MIT' }
    s.author           = { "Lucas Brito" => "lucas.brito@rarolabs.com.br" }
    s.source           = { :git => "https://github.com/nextcodebr/liveness-sdk-podspec-ios.git", :tag => s.version.to_s }
    s.swift_version    = '5.0'
    s.ios.deployment_target = '12.2'

    s.vendored_frameworks  = 'NXCDLivenessSDK.xcframework'
    
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }

    s.dependency 'GoogleMLKit/FaceDetection', '~> 4.0.0'
    s.dependency 'GoogleMLKit/ObjectDetection'
  end