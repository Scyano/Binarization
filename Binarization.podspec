
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
  
  s.ios.deployment_target = '9.0'
  
  #>>>>>>>>>  Case One  <<<<<<<<<<
  #if ENV['f']
  #    s.vendored_framework = 'Binarization/Frameworks/Binarization.framework'
  #else
  #    s.resource_bundles = {
  #        'Resources' => ['Binarization/Assets/*/**']
  #    }
  #    s.source_files = 'Binarization/Classes/**/*'
  #    #s.vendored_framework = 'Binarization/Frameworks/Other.framework'
  #    #s.vendored_library = 'Binarization/Frameworks/library.a'
  #end
  
  #>>>>>>>>>  Case Two  <<<<<<<<<<
  s.subspec 'Framework' do |sf|
      sf.vendored_framework = 'Binarization/Frameworks/Binarization.framework'
  end
  
  s.subspec 'Core' do |sc|
      sc.source_files = 'Binarization/Classes/**/*'
      sc.resource_bundles = {
          'Resources' => ['Binarization/Assets/*/**']
      }
      #sc.vendored_framework = 'Binarization/Frameworks/Other.framework'
      #sc.vendored_library = 'Binarization/Frameworks/Libraries/library.a'
      #sc.resource = 'Binarization/Frameworks/Bundles/*.bundle'
  end
 
  s.default_subspecs = 'Framework'

end
