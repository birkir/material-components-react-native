require 'json'

Pod::Spec.new do |s|
  # NPM package specification
  package = JSON.parse(File.read('../package.json'))

  s.name                = "RNMaterialComponents"
  s.version             = package["version"]
  s.summary             = package["description"]
  s.description         = <<-DESC
                            MaterialComponents wrapper for React Native
                          DESC
  s.homepage            = "https://github.com/birkir/react-native-material-components"
  s.license             = package['license']
  s.authors             = "Birkir Gudjonsson <birkir.gudjonsson@gmail.com>"
  s.source              = { :git => "https://github.com/birkir/react-native-material-components.git", :tag => "v#{s.version}" }

  s.platform            = :ios, "8.0"

  s.dependency          'React'
  s.dependency          'MaterialComponents'
  s.dependency          'MaterialComponents/Cards'
  s.dependency          'MaterialComponents/Collections'
  s.dependency          'MaterialComponents/ProgressView'
  s.dependency          'MaterialComponents/Buttons'
  s.dependency          'MaterialComponents/TextFields'

  s.source_files        = 'RNMaterialComponents/**/*.{h,m}'

end
