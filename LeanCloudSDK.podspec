Pod::Spec.new do |s|
s.name             = "LeanCloudSDK"
s.version          = "3.1.6.7"
s.summary          = "LeanCloud iOS SDK for Cocoapods convenience"
s.homepage         = "https://leancloud.cn"
s.license         = {
    					:type => "Commercial",
    					:text => "Copyright 2015 LeanCloud, Inc. See https://leancloud.cn/terms.html"
  					}
s.author           = { "LeanCloud" => "support@leancloud.cn" }
s.source           = { :git => "https://github.com/appwgh/LeanCloudSDK.git", :tag => "#{s.version}" }

s.platform     = :ios, '7.0'
s.requires_arc = true

s.default_subspec = 'Core'

s.subspec 'Core' do |cs|
  cs.requires_arc = true
	cs.public_header_files = "Frameworks/AVOSCloud.framework/Headers/*.h"
	cs.preserve_paths = "Frameworks/AVOSCloud.framework"
	cs.ios.vendored_frameworks = "Frameworks/AVOSCloud.framework"
	cs.frameworks = "CFNetwork", "SystemConfiguration", "MobileCoreServices", "CoreTelephony", "CoreLocation",  "CoreGraphics", "Security", "QuartzCore"
	cs.library = "icucore", "sqlite3"
end

s.subspec 'LeanCloudIM' do |cs|
  cs.requires_arc = true
  cs.public_header_files = 'Frameworks/AVOSCloudIM.framework/Headers/*.h' 
  cs.preserve_paths = "Frameworks/AVOSCloudIM.framework"
  cs.ios.vendored_frameworks = "Frameworks/AVOSCloudIM.framework"
  cs.dependency 'LeanCloudSDK/Core'
end

end
