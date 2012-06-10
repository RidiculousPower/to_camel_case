require 'date'

Gem::Specification.new do |spec|

  spec.name                      =  'to_camel_case'
  spec.rubyforge_project         =  'to_camel_case'
  spec.version                   =  '1.0.0'

  spec.summary                   =  "Provides :to_camel_case to String via module ToCamelCase."
  spec.description               =  'Converts strings like "to_camel_case" into Camel Case: "ToCamelCase".'

  spec.authors                   =  [ 'Asher' ]
  spec.email                     =  'asher@ridiculouspower.com'
  spec.homepage                  =  'http://rubygems.org/gems/to_camel_case'

  spec.date                      =  Date.today.to_s
  
  spec.files                     = Dir[ '{lib,spec}/**/*',
                                        'README*', 
                                        'LICENSE*',
                                        'CHANGELOG*' ]

end
