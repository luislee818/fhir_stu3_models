# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "fhir_models"
  s.summary = "A Gem for handling FHIR models in ruby"
  s.description = "A Gem for handling FHIR models in ruby"
  s.email = "jwalonoski@mitre.org"
  s.homepage = "https://github.com/fhir-crucible/fhir_models"
  s.authors = ["Jason Walonoski", "Andre Quina", "Michael O'Keefe"]
  s.version = '0.3.1'
  s.files = s.files = `git ls-files`.split("\n")
  s.add_development_dependency 'pry'
  s.add_dependency 'rake'
  s.add_dependency 'nokogiri'
  s.add_dependency 'date_time_precision'
  s.add_dependency 'bcp47'
  s.add_dependency 'mime-types'
end
