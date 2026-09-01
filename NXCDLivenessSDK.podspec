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

  # Distribuição binária: o pod é servido por ESTE repositório, que é público e
  # entrega o xcframework já compilado. Não aponte para `liveness-sdk-ios`, que
  # é privado — foi o que aconteceu da 1.0.7 à 1.0.8 e passou a exigir que quem
  # integra tivesse acesso git ao código-fonte.
  s.source           = { :git => "https://github.com/nextcodebr/liveness-sdk-podspec-ios.git", :tag => s.version.to_s }
  s.vendored_frameworks = 'NXCDLivenessSDK.xcframework'

  s.swift_version    = '5.0'
  s.static_framework = true
  s.ios.deployment_target = '15.0'
  s.frameworks       = 'UIKit'

  s.dependency 'GoogleMLKit/FaceDetection'
  s.dependency 'GoogleMLKit/ObjectDetection'
end
