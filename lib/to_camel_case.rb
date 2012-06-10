
module ::ToCamelCase
end

basepath = 'to_camel_case/ToCamelCase'

files = [

]

files.each do |this_file|
  require_relative( File.join( basepath, this_file ) + '.rb' )
end

require_relative( basepath + '.rb' )

class ::String
  include ::ToCamelCase
end
