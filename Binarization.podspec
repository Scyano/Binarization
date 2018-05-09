
Pod::Spec.new do |s|
  s.name             = 'Binarization'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Binarization.'

  s.description      = <<-DESC
  long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/Scyano/Binarization'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Scyano' => 'scyano@icloud.com' }
  s.source           = { :git => 'https://github.com/Scyano/Binarization.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '8.0'
  if ENV['f']
      s.vendored_frameworks = 'Binarization/Frameworks/Binarization.framework'
  else
      s.resource_bundles = {
          'Resources' => ['Binarization/Assets/*/**']
      }
      s.source_files = 'Binarization/Classes/**/*'
  end

end
