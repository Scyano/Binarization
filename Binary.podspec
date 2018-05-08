#
# Be sure to run `pod lib lint Binary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Binary'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Binary.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/want17475186@icloud.com/Binary'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'want17475186@icloud.com' => 'scyano@icloud.com' }
  s.source           = { :git => 'https://github.com/want17475186@icloud.com/Binary.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '8.0'
  if ENV['f']
      s.vendored_frameworks = 'Binary/Frameworks/Binary.framework'
  else
      # '*'指带文件夹, 其他文件将被忽略, '**'指代包含文件夹的所有文件(工程内会创建同名的物理文件夹和 group 文件夹, 造成混乱, 所以建议所有文件都放在同一层级下'*/**', '*/*/**')
      #  文件会存放于 framework 内的 Resources.bundle 内
      s.resource_bundles = {
          'Resources' => ['Binary/Assets/*/*/**']
      }
      s.source_files = 'Binary/Classes/**/*'
#      s.public_header_files = 'Pod/Classes/*/*.h'
  end

#  s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
