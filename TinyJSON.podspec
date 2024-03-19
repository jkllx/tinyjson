#
# Be sure to run `pod lib lint TinyJSON.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TinyJSON'
  s.version          = '1.0.1'
  s.summary          = 'TinyJSON for swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    TinyJSON for swift
                       DESC

  s.homepage         = 'https://github.com/soulbind/json'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'soulbind' => 'hulj1204@yahoo.com' }
  s.source           = { :git => 'https://github.com/soulbind/json.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'TinyJSON/Classes/**/*'
  
end
