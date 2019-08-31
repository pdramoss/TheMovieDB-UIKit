# Podfile
platform :ios, '12.0'
use_frameworks!

# My pods list

def pods_list
  pod 'Alamofire'
  pod 'AlamofireImage'
end

target 'TheMovieDB-UIKit' do
  pods_list
end

target 'TheMovieDB-UIKitTests' do
  inherit! :search_paths
  # Pods for testing
  pods_list
end

target 'TheMovieDB-UIKitUITests' do
  inherit! :search_paths
  # Pods for testing
  pods_list
end
