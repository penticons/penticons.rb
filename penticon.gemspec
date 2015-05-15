Gem::Specification.new do |s|
  s.name        = 'penticon'
  s.version     = '0.0.0'
  s.date        = '2015-05-15'
  s.summary     = "Hola!"
  s.description = "An implementation of Penticons in ruby programming language"
  s.authors     = ["Nairitya Khilari"]
  s.email       = 'nairityakhilari@gmail.com'
  s.files       = `git ls-files`.split("\n") | Dir.glob('lib/penticon/*')
  s.homepage    = ''
  s.license       = 'MIT'
end