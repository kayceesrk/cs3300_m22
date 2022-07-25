# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "ipa"
  spec.version       = "0.1.0"
  spec.authors       = ["KC Sivaramakrishnan"]
  spec.email         = ["kc@kcsrk.info"]

  spec.summary       = "cs6225 IITM Theme"
	spec.homepage      = "https://cs6225_s21_iitm.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
