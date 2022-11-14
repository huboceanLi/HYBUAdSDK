#
# Be sure to run `pod lib lint HYBUAdSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|

  spec.name         = "HYBUAdADK"
  spec.version      = "0.1.3"
  spec.summary      = "buadsdk"
  spec.description  = <<-DESC
  广告库
                   DESC
  spec.homepage     = "https://github.com/huboceanLi/HYBUAdSDK"
  spec.license      = "MIT"
  spec.author             = { "oceanLi" => "li437277219@gmail.com" }
  spec.platform     = :ios, "10.0"
  spec.ios.deployment_target = "10.0"
  spec.source       = { :git => "https://github.com/huboceanLi/HYBUAdSDK.git", :tag => spec.version}
  spec.source_files  = "HYBUAdSDK/HYBUAdADK.framework/Headers/*.{h,m}"
  spec.frameworks = "CFNetwork", "SystemConfiguration"
  spec.library   = "z"
  spec.vendored_frameworks = 'HYBUAdSDK/HYBUAdADK.framework'
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }

  spec.dependency "Ads-CN", '~> 4.5.1.6'
  spec.dependency "AFNetworking"
  spec.dependency "UMCommon"
  spec.dependency "Google-Mobile-Ads-SDK", '~> 9.0.0'
  spec.dependency "YYKit"
  spec.dependency "SVProgressHUD", '~> 2.2.5'
  
  # s.resource_bundles = {
  #   'HYBUAdSDK' => ['HYBUAdSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
