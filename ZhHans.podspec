#
# Be sure to run `pod lib lint ZhHans.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZhHans'
  s.version          = '1.7.0'
  s.summary          = 'Traditional Chinese to Simplified Chinese conversion library'
  s.description      = <<-DESC
A easy to use and fast Objective-C helper library to convert Traditional Chinese String to Simplified Chinese String.
e.g. ZH("繁體") -> "繁体"
                       DESC

  s.homepage         = 'https://github.com/eddy-lau/ZhHans'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Eddie Lau' => 'eddie@touchutility.com' }
  s.source           = { :git => 'https://github.com/eddy-lau/ZhHans.git', :tag => s.version.to_s }
  s.platform         = :ios
  s.ios.deployment_target = '12.0'

  s.source_files = 'ZhHans/Classes/**/*'

  s.public_header_files = 'ZhHans/Classes/*.h'
  s.private_header_files = 'ZhHans/Classes/{T2S.h,ZhHansTable.h}'
end
