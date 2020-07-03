#
# Be sure to run `pod lib lint mfStepText.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'mfStepText'
  s.version          = '1.0.0'
  s.summary          = 'mfStepText displays the text of the sentences step by step'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
mfStepText is a light library that is written in Swift and gives you the sentences in order and character by character.
It can be used to create dynamic labels or placeholders or anything else.
                       DESC

  s.homepage         = 'https://github.com/mohammadFirouzi/mfStepText'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mohammad Firouzi' => 'mohammad.spz@icloud.com' }
  s.source           = { :git => 'https://github.com/mohammadFirouzi/mfStepText.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'Files/Classes/**/*'
  
  # s.resource_bundles = {
  #   'mfStepText' => ['mfStepText/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
