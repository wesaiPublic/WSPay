Pod::Spec.new do |s|
  s.name = "WSPay"
  s.version = "0.1.3"
  s.summary = "WSPay."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.author  = { 'wesaiPublic' => 'app@wesai.com' }
  s.homepage = "https://github.com/wesaiPublic/WSPay.git"
  s.description = "TODO: Add long description of the pod here."
  s.frameworks = ["UIKit", "WebKit", "CoreTelephony", "SystemConfiguration", "CoreGraphics","StoreKit"]
  s.xcconfig = {"OTHER_LDFLAGS"=>"-lObjC"}
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/WSPay.framework'
  s.dependency 'ShareSDK3/ShareSDKPlatforms/WeChat', '~> 3.3.2'
  s.dependency 'AlipaySDK-2.0'
  s.dependency 'Masonry', '~> 0.6.1'
  
#s.ios.resource=['ios/Resource/**/*.{xcassets,wav,mp3,xib,txt,cer}']
s.ios.resource=['ios/Resource/**/*.{xcassets,wav,mp3,xib,txt,cer}']
end
