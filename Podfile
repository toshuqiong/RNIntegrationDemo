# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'RNIntegrationDemo' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

  # Pods for RNIntegrationDemo
  pod 'Masonry', '~> 1.1.0'
  pod 'React', :path => '../../node_modules/react-native', :subspecs => [
    'Core',
    'CxxBridge',
    'DevSupport',
    'RCTText',
    'RCTNetwork',
    'RCTWebSocket',
  ]
  # 如果你的RN版本 >= 0.42.0，则加入下面这行
  pod 'yoga', :path => '../../node_modules/react-native/ReactCommon/yoga'
  
  # 如果RN版本 >= 0.45则加入下面三个第三方编译依赖
  pod 'DoubleConversion', :podspec => '../../node_modules/react-native/third-party-podspecs/DoubleConversion.podspec'
  pod 'GLog', :podspec => '../../node_modules/react-native/third-party-podspecs/GLog.podspec'
  pod 'Folly', :podspec => '../../node_modules/react-native/third-party-podspecs/Folly.podspec'

  target 'RNIntegrationDemoTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'RNIntegrationDemoUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
