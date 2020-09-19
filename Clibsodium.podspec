Pod::Spec.new do |s|
  s.name             = 'Clibsodium'
  s.version          = '1.0.18'
  s.license          = { :type => "ISC", :file => 'LICENSE' }
  s.summary          = 'Clibsodium provides a safe and easy to use interface to perform common cryptographic operations on iOS and OSX.'
  s.homepage         = 'https://github.com/jedisct1/swift-sodium'
  s.social_media_url = 'https://twitter.com/jedisct1'
  s.authors          = { 'Frank Denis' => '' }
  s.source           = { :git => 'https://github.com/mrosales/swift-sodium.git',
                         :branch => 'master' }


  s.requires_arc              = true
  s.static_framework          = true
  s.ios.deployment_target     = '9.0'
  s.osx.deployment_target     = '10.11'
  s.watchos.deployment_target = '5.0'

  s.xcconfig = {
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }

  s.module_name         = 'Clibsodium'
  s.vendored_frameworks = ['Clibsodium.xcframework']
  s.preserve_paths      = ['Clibsodium.xcframework']
end
