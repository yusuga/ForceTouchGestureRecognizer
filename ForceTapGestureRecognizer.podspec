Pod::Spec.new do |s|
  s.name = 'ForceTapGestureRecognizer'
  s.version = '0.0.1'
  s.summary = 'Tap gesture recognizer of 3D touch.'
  s.homepage = 'https://github.com/yusuga/ForceTapGestureRecognizer'
  s.license = 'MIT'
  s.author = 'Yu Sugawara'
  s.source = { :git => 'https://github.com/yusuga/ForceTapGestureRecognizer.git', :tag => s.version.to_s }
  s.platform = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.source_files = 'Classes/ForceTapGestureRecognizer/*.{h,m}'
  s.requires_arc = true
  s.compiler_flags = '-fmodules'
end