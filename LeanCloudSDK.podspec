Pod::Spec.new do |s|
s.name             = "LeanCloudSDK"
s.version          = "3.1.5.2"
s.summary          = "LeanCloud iOS SDK for mobile backend."
s.homepage         = "https://leancloud.cn"
s.license         = {
    					:type => "Commercial",
    					:text => "Copyright 2015 LeanCloud, Inc. See https://leancloud.cn/terms.html"
  					}
s.author           = { "LeanCloud" => "support@leancloud.cn" }
s.source           = { :git => "https://github.com/appwgh/LeanCloudSDK.git", :tag => "#{s.version}" }

s.platform     = :ios, '7.0'
s.requires_arc = true

#s.source_files = 'libLeanCloudSDK/*.{h,m}'
s.public_header_files = "Frameworks/AVOSCloud.framework/Headers/*.h"
s.preserve_paths = "Frameworks/AVOSCloud.framework"
s.ios.vendored_frameworks = "Frameworks/AVOSCloud.framework"

s.frameworks = "CFNetwork", "SystemConfiguration", "MobileCoreServices", "CoreTelephony", "CoreLocation",  "CoreGraphics", "Security", "QuartzCore"
s.library = "icucore", "sqlite3"

end
