Pod::Spec.new do |s|

  s.name         = "BL-iOS-Flutter-Advertisement"
  s.version      = "0.0.1"
  s.summary      = "a test Advertisement."
  s.description  = <<-DESC 
                     This is a tool for learning and testing only, without any commercial value.
                   DESC
  s.homepage     = "https://github.com/HelloBoLun/Flutter-iOS-Advertisement"
  s.license      = "MIT"
  s.author       = { "HelloBoLun" => "cbl217@hotmail.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/HelloBoLun/Flutter-iOS-Advertisement.git", :tag => "#{s.version}" }
  s.source_files = "BL-iOS-Flutter-Advertisement", "FlutterCustomAdvertisement/*.{h,m,dart}"

end