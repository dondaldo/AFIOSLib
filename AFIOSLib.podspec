#
# Be sure to run `pod lib lint AFIOSLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AFIOSLib'
  s.version          = '0.0.2'
  s.summary          = 'A short description of AFIOSLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/dondaldo/AFIOSLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'srikanth.android@hotmail.com' => 'srikanth@appsfly.io' }
  s.source           = { :git => 'https://github.com/dondaldo/AFIOSLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.swift_version   = '4.0'

  s.ios.deployment_target = '8.0'

  s.source_files = 'AFIOSLib/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AFIOSLib' => ['AFIOSLib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  #s.frameworks = 'UIKit'
  s.subspec 'AFCore' do |spec|
      spec.ios.vendored_frameworks  = 'core.framework'
  end
  
  s.subspec 'AFMicroApp' do |spec|
      spec.ios.vendored_frameworks  = 'micro_app.framework'
  end
  
  s.dependency 'Socket.IO-Client-Swift', '~> 13.1.0'
  
end
