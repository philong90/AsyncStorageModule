require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|

  s.name         = "AsyncStorageModule"
  s.version          = '0.1.0'
  s.summary          = 'A short description of AsyncStorageModule.'
  s.license      = package['license']
  s.authors      = package['author']
  s.homepage     = package['repository']['url']
  s.platforms     = { :ios => "14.0"}

  s.source       = { :git => "https://github.com/philong90/AsyncStorageModule.git", :tag => "#{s.version}" }
  s.source_files = 'AsyncStorageModule/Classes/**/*'
  s.dependency 'React-Core'
end