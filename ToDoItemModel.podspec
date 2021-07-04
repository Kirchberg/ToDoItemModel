Pod::Spec.new do |spec|

  spec.name         = "ToDoItemModel"
  spec.version      = "0.0.1"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
This CocoaPods library helps you perform calculation.
                   DESC

  spec.homepage     = "https://github.com/Kirchberg/ToDoItemModel"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Kirchberg" => "kirill.kostarev.2017@gmail.com" }

  spec.ios.deployment_target = "13.0"
  spec.swift_version = "5.0"

  spec.source        = { :git => "https://github.com/Kirchberg/ToDoItemModel.git", :tag => "#{spec.version}" }
  spec.source_files  = "ToDoItemModel/**/*.{h,m,swift}"

end
