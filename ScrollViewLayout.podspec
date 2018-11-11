Pod::Spec.new do |s|
  s.name                  = 'ScrollViewLayout'
  s.version               = '1.0.1'
  s.summary               = 'Customise layout of UIScrollView\'s subviews'
  s.homepage              = 'https://github.com/darrarski/ScrollViewLayout'
  s.author                = { 'Dariusz Rybicki' => 'darrarski@gmail.com' }
  s.social_media_url      = 'https://twitter.com/darrarski'
  s.license               = { :type => 'MIT', 
                              :file => 'LICENSE' }
  s.source                = { :git => 'https://github.com/darrarski/ScrollViewLayout.git', 
                              :tag => "v#{s.version}" }
  s.platform              = :ios
  s.ios.deployment_target = '11.0'
  s.source_files          = 'ScrollViewLayout'
  s.requires_arc          = true
  s.frameworks            = 'UIKit'
end
