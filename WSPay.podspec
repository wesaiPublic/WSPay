#
# Be sure to run `pod lib lint PayDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WSPay'
  s.version          = '0.1.0'
  s.summary          = 'WSPay.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://gitlab.intra.wesai.com/liaochenyu/iOS_wesaiPay'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'you520t' => 'liaochenyu@wesai.com' }
#s.source           = { :git => 'http://gitlab.intra.wesai.com/liaochenyu/iOS_wesaiPay.git', :tag => s.version.to_s }
  s.source           = { :git => 'http://gitlab.intra.wesai.com/liaochenyu/iOS_wesaiPay.git', :commit => 'e38c8e13796b4e5e28252082301b8ae6fdeadd05' }
  s.ios.deployment_target = '8.0'

  s.frameworks = 'UIKit','CoreTelephony', 'SystemConfiguration', 'CoreGraphics','StoreKit'

  s.source_files = 'Example/PayDemo/Classes/**/*.{h,m}'
  s.prefix_header_contents = '#import "WSPayPCH.h"'
  s.xcconfig = {"OTHER_LDFLAGS" => "-lObjC"}
  s.public_header_files = 'Example/PayDemo/Classes/WSPay.h'

  # s.resource_bundles = {
  #   'PayDemo' => ['PayDemo/Assets/*.png']
  # }
  s.dependency 'ShareSDK3/ShareSDKPlatforms/WeChat', '~> 3.3.2'
  s.dependency 'AlipaySDK-2.0'
  s.dependency 'Masonry', '~> 0.6.1'
#s.pod_target_xcconfig = {
#       'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/ShareSDK3',
#       'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup'
#   }

end
