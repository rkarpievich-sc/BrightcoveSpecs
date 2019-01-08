Pod::Spec.new do |s|
	s.name = "ApplicasterSDK"
	# The version is replaced with the tag when running the deploy script
	s.version = "8.2.9"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterSDK"
	s.description = "ApplicasterSDK"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterSDK_Framework_8.2.9_6126e50ec303e3dd0c8e6783ec25b0ce24a0935c.zip"
	}

	s.frameworks = 'Foundation', 'EventKit', 'EventKitUI', 'WebKit', 'AdSupport', 'Accounts', 'Social',
	'AudioToolbox', 'AVFoundation', 'CoreTelephony', 'CoreMotion', 'CoreMedia', 'CoreLocation', 'iAd',
	'CoreData', 'CoreText', 'CFNetwork', 'QuartzCore', 'MobileCoreServices', 'QuickLook', 'AssetsLibrary',
	'MessageUI', 'StoreKit', 'SystemConfiguration', 'Accelerate', 'MediaPlayer', 'AddressBook', 'CoreGraphics', 'SafariServices'
	s.libraries = 'iconv', 'resolv', 'xml2', 'sqlite3.0', 'c++', 'z'
	s.vendored_frameworks = 'ApplicasterSDK.framework'
	s.preserve_paths = 'ApplicasterSDK.framework/*'

# Needed in case static_framework
# s.static_framework = true
	# s.resources = [
	# 	'ApplicasterSDK.framework/*.nib',
	# 	'ApplicasterSDK.framework/*.bundle',
	# 	'ApplicasterSDK.framework/*.caf',
	# 	'ApplicasterSDK.framework/*.aiff',
	# 	'ApplicasterSDK.framework/*.png',
	# 	'ApplicasterSDK.framework/*.jpg',
	# 	'ApplicasterSDK.framework/*.jpeg'
	# ]

	s.xcconfig = {
		'OTHER_LDFLAGS' => '$(inherited)',
		'ENABLE_BITCODE' => 'YES',
		'GCC_WARN_UNDECLARED_SELECTOR' => "NO",
		'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
		'SWIFT_VERSION' => '4.2',
		'OTHER_CFLAGS'  => '-fembed-bitcode'
	}

	# Public frameworks

	s.dependency 'AFNetworking', '= 3.2.1'
	s.dependency 'CocoaLumberjack/Swift', '= 3.4.2'
	s.dependency 'TTTAttributedLabel', '= 2.1.0'
	s.dependency 'FBSDKCoreKit', '= 4.38.0'
	s.dependency 'FBSDKLoginKit', '= 4.38.0'
	s.dependency 'FBSDKShareKit', '= 4.38.0'
	s.dependency 'FBNotifications', '= 1.0.1'
	s.dependency 'SSZipArchive', '= 2.1.0'
	s.dependency 'GoogleAds-IMA-iOS-SDK', '= 3.7.2'
	s.dependency 'TwitterKit', '= 3.3.0'
	s.dependency 'TwitterCore', '= 3.1.0'

	# Applicater's Private Pod frameworks

	s.dependency 'ZappPlugins', '~> 7.1.0'
	s.dependency 'ZappAnalyticsPluginsSDK', '~> 6.0.0'
	s.dependency 'ZappPushPluginsSDK', '~> 6.0.0'
	s.dependency 'ZappLoginPluginsSDK', '~> 6.0.0'
	s.dependency 'ZappGeneralPluginsSDK', '~> 6.0.0'
end
