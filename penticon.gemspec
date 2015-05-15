Gem::Specification.new do |s|
  s.name        = 'penticon'
  s.version     = '1.0.0'
  s.date        = '2015-05-15'
  s.summary     = "An implementation of Penticons in ruby programming language"
  s.description = "Identicons similar to GitHub's contribution activity calendar"
  s.authors     = ["Nairitya Khilari", "Pravendra Singh Rathore"]
  s.email       = 'nairityakhilari@gmail.com'
  s.files       = `git ls-files`.split("\n") | Dir.glob('lib/penticon/*')
  s.homepage    = ''
  s.license       = 'MIT'
end