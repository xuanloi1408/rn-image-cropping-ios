require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = pjson["name"]
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/xuanloi1408/rn-image-cropping-ios"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "Loi Cao" => "xuanloi1408@gmail.com" }
  s.platform        = :ios, "7.0"
  s.source          = { :git => "https://github.com/xuanloi1408/rn-image-cropping-ios", :tag => "v#{s.version}" }
  s.source_files  = "ios/*.{h,m}"
  
  s.dependency 'React'
  s.static_framework = true

end
