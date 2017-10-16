Pod::Spec.new do |s|
  s.name             = "ChatSDKFirebaseAdapter"
  s.version          = "4.2.5"
  s.summary          = "Chat SDK - Mobile messaging framework for iOS"
  s.homepage         = "http://chatsdk.co"
  s.license          = 'MIT'
  s.author           = { "Ben Smiley" => "ben@chatsdk.co" }
  s.source           = { :git => "https://github.com/chat-sdk/chat-sdk-ios.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.default_subspecs = 'FirebaseAdapter'

  s.source_files = ['Classes/**/*']
    
  s.frameworks = 'CoreData', 'SystemConfiguration', 'Security', 'MobileCoreServices', 'CFNetwork', 'MessageUI', 'Accounts', 'Social', 'CoreLocation', 'AddressBook', 'AdSupport', 'FirebaseCore', 'FirebaseAnalytics', 'FirebaseDatabase', 'FirebaseAuth', 'FirebaseInstanceID', 'FirebaseStorage', 'GTMSessionFetcher'

  s.library = 'icucore', 'c++', 'sqlite3'

  s.subspec 'FirebaseAdapter' do |fi| 

   fi.dependency 'ChatSDKCore'  

   fi.dependency 'Firebase', '~> 4.0'
   fi.dependency 'Firebase/Core', '~> 4.0'
   fi.dependency 'Firebase/Auth', '~> 4.0'
   fi.dependency 'Firebase/Analytics', '~> 4.0'
   fi.dependency 'Firebase/Database', '~> 4.0'
   fi.dependency 'Firebase/Storage', '~> 4.0'
   fi.dependency 'Firebase/Messaging', '~> 4.0'

   fi.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(PROJECT_DIR)/FirebaseCore/Frameworks $(PROJECT_DIR)/FirebaseAnalytics/Frameworks $(PROJECT_DIR)/FirebaseDatabase/Frameworks $(PROJECT_DIR)/FirebaseAuth/Frameworks $(PROJECT_DIR)/FirebaseInstanceID/Frameworks $(PROJECT_DIR)/FirebaseStorage/Frameworks' }

  end
     
end

