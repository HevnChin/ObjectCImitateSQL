Pod::Spec.new do |s|  
  s.name             = "ObjectCImitateSQL"  
  s.version          = "1.0.0"  
  s.summary          = “Use SQL type Code to manage modesOfArray”  
  s.description      = “ObjectC simulation functionality to SQL data to facilitate front-end query data. “ 
  
  s.homepage         = "https://github.com/WSFeng/ObjectCImitateSQL"  
  s.license          = 'MIT'  
  s.author           = "GreatSage : iwangshengfeng@163.com"
  s.source           = { :git => "https://github.com/WSFeng/ObjectCImitateSQL.git", :tag => s.version.to_s }  
  
  s.platform     = :ios, ‘7.0’  
  # s.ios.deployment_target = ‘7.0’  
  s.requires_arc = true  
  
  s.source_files = 'ObjectCImitateSQL/Class/ObjectCSQLManager/*'

  s.frameworks = 'Foundation' , 'UIKit'  

end 
