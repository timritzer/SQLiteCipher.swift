#
# `pod lib lint SQLite.swift.podspec' fails - see
#    https://github.com/CocoaPods/CocoaPods/issues/4607
#

Pod::Spec.new do |s|
  s.name = 'SQLiteCipher.swift'
  s.version          = "0.0.1"
  s.summary = 'The SQLCipher flavor of SQLite.swift.'

  s.description      = <<-DESC
    SQLiteCipher.swift is SQLite.swift built on top of SQLCipher.
DESC

  s.homepage         = "https://github.com/stephencelis/SQLiteCipher.swift"
  s.license          = 'MIT'
  s.author           = { "Stephen Celis" => "stephen@stephencelis.com" }
  s.source           = { :git => "https://github.com/gblotter/SQLiteCipher.swift.git", :branch => 'inProgress/SQLiteCipher-with-podspec' }
  # s.source           = { :git => "https://github.com/stephencelis/SQLiteCipher.swift.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/stephencelis'

  s.module_name      = 'SQLiteCipher'
  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"
  s.osx.deployment_target = "10.9"
 
  s.dependency 'SQLCipher'
  s.dependency 'SQLite.swift'

  s.source_files = "SQLiteCipher/**/*.{c,h,m,swift}"
end
