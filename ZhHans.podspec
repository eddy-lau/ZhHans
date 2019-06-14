#
# Be sure to run `pod lib lint ZhHans.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZhHans'
  s.version          = '1.0.8'
  s.summary          = 'Traditional Chinese to Simplified Chinese conversion library'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A easy to use and fast Objective-C helper library to convert Traditional Chinese String to Simplified Chinese String.
e.g. ZH("繁體") -> "繁体"
                       DESC

  s.homepage         = 'https://github.com/eddy-lau/ZhHans'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Eddie Lau' => 'eddie@touchutility.com' }
  s.source           = { :git => 'https://github.com/eddy-lau/ZhHans.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform = :ios
  s.ios.deployment_target = '7.0'

  s.source_files = 'ZhHans/Classes/**/*'

  # s.resource_bundles = {
  #   'ZhHans' => ['ZhHans/Assets/*.png']
  # }

  s.public_header_files = 'ZhHans/Classes/*.h'
  s.private_header_files = 'ZhHans/Classes/{T2S.h,ZhHansTable.h}'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
