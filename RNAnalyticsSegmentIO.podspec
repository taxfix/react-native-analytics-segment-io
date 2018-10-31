require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNAnalyticsSegmentIO"
  s.version      = package["version"]

  s.license      = "MIT"
  s.platform     = :ios, "7.0"

  s.source_files  = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "Analytics"
end
