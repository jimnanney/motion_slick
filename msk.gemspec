# -*- encoding: utf-8 -*-
VERSION = "1.0.0"

Gem::Specification.new do |spec|
  spec.name          = "msk"
  spec.version       = VERSION
  spec.authors       = ["Jim Nanney"]
  spec.email         = ["jnanney@gmail.com"]
  spec.description   = %q{Motion SlicK is a wrapper of the SpriteKit api that helps make building SpriteKit based games easier. The Motion SlicK gem adds a convenience DSL for SKAction onto the SKNode class. This adds less verbose names for common SKActions, and provides an easy way to build sequences and grouped actions (even nested). It also adds a few convenience methods for determining SKNode size and boundaries.}
  spec.summary       = %q{Motion SlicK is a wrapper of the SpriteKit api that helps make building SpriteKit based games easier.}
  spec.homepage      = "https://github.com/jimnanney/motion_slick"
  spec.license       = "MIT"

  files = []
  files << 'README.md'
  files << 'LICENSE'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
