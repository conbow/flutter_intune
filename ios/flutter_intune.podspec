#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_intune.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_intune'
  s.version          = '0.0.1'
  s.summary          = 'Unofficial Microsoft Intune SDK bindings for Flutter'
  s.description      = <<-DESC
Unofficial Microsoft Intune SDK bindings for Flutter
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.2'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.3'
  
  # Intune
  s.preserve_paths = 'IntuneMAMSwift.xcframework/**/*', 'IntuneMAMSwiftStub.xcframework/**/*'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework IntuneMAMSwift -framework IntuneMAMSwiftStub' }
  s.vendored_frameworks = 'IntuneMAMSwift.xcframework', 'IntuneMAMSwiftStub.xcframework'
end
