Pod::Spec.new do |s|
  s.name = 'ZTCoreKit'
  s.version = '1.0.55'
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.summary = 'Official Zhortech ZTCoreKit SDK for iOS to access core features.'
  s.homepage = 'https://zhortech.com/'
  s.social_media_url = 'https://twitter.com/zhortech'
  s.authors = { "Pavel Shpak" => "p.shpak@zhortech.com" }
  s.source = { :git => "https://github.com/zhortech/ztcorekit-ios-sdk.git", :tag  => s.version.to_s }
  s.platform = :ios
  s.requires_arc = true
  s.swift_version = '5.0'
  s.cocoapods_version = '>= 1.4.0'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.dependency 'Alamofire', '~> 5.4.0'
  s.dependency 'ObjectMapper', '~> 4.2'
  s.dependency 'iOSDFULibrary', '~> 4.8.0'

  s.source_files = "Sources/ZTCoreKit.framework/Headers/*.h"
  s.public_header_files = "Sources/ZTCoreKit.framework/Headers/*.h"
  s.vendored_frameworks = 'Sources/ZTCoreKit.framework'

  s.ios.deployment_target   = '13.0'
  s.ios.weak_frameworks = 'CoreBluetooth', 'Security', 'UIKit', 'Foundation'
  
  s.exclude_files = 'readme-images/', 'docs/'
end
