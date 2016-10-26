Pod::Spec.new do |s|

  s.name         = "ObjectCImitateSQL"
  s.version      = "2.1.0"
  s.summary      = "ObjectC simulation functionality to SQL data to facilitate front-end query data[模拟SQL机制操作ObjectC对象]"
  s.description  = <<-DESC
			ObjectC simulation functionality to SQL data to facilitate front-end query data
                   DESC

  s.homepage     = "https://github.com/WSFeng/ObjectCImitateSQL"
  s.license      = "MIT"
  s.author             = { "Sage" => "iwangshengfeng@163.com" }

  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/WSFeng/ObjectCImitateSQL.git", :tag => s.version.to_s }

  s.source_files  = "ObjectCImitateSQL/Class/ObjectCSQLManager/*"
  s.frameworks = "Foundation", "UIKit"

  s.requires_arc = true
end
