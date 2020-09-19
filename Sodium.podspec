Pod::Spec.new do |s|
s.name = 'Sodium'
s.version = '0.9.0'
s.swift_version = '5.0'
s.license = { :type => "ISC", :file => 'LICENSE' }
s.summary = 'Swift-Sodium provides a safe and easy to use interface to perform common cryptographic operations on iOS and OSX.'
s.homepage = 'https://github.com/jedisct1/swift-sodium'
s.social_media_url = 'https://twitter.com/jedisct1'
s.authors = { 'Frank Denis' => '' }
s.source = { :git => 'https://github.com/mrosales/swift-sodium.git',
             :branch => 'master' }

s.source_files = 'Sodium/**/*.{swift,h}'

s.ios.deployment_target = '9.0'
s.osx.deployment_target = '10.11'
s.watchos.deployment_target = '5.0'
s.requires_arc = true
s.static_framework = true

s.xcconfig = {
  'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
  'HEADER_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/Headers/Public" "${PODS_XCFRAMEWORKS_BUILD_DIR}/Clibsodium/Headers"',
  'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_XCFRAMEWORKS_BUILD_DIR}/Clibsodium"',
  'OTHER_LDFLAGS' => '$(inherited) -ObjC -l"sodium"'
}

s.dependency 'Clibsodium'
end
