$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
require 'shoulda/matchers/version'

Gem::Specification.new do |s|
  s.name        = "shoulda-matchers"
  s.version     = Shoulda::Matchers::VERSION.dup
  s.authors     = ["Tammer Saleh", "Joe Ferris", "Ryan McGeary", "Dan Croak",
                   "Matt Jankowski", "Stafford Brunk", "Elliot Winkler"]
  s.date        = Time.now.strftime("%Y-%m-%d")
  s.email       = "support@thoughtbot.com"
  s.homepage    = "https://matchers.shoulda.io/"
  s.summary     = "Making tests easy on the fingers and eyes"
  s.license     = "MIT"
  s.description = "Making tests easy on the fingers and eyes"
  s.metadata    = {
    'bug_tracker_uri' => 'https://github.com/thoughtbot/shoulda-matchers/issues',
    'changelog_uri' => 'https://github.com/thoughtbot/shoulda-matchers/blob/master/NEWS.md',
    'documentation_uri' => 'https://matchers.shoulda.io/docs',
    'homepage_uri' => 'https://matchers.shoulda.io',
    'source_code_uri' => 'https://github.com/thoughtbot/shoulda-matchers'
  }

  s.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z -- {docs,lib,README.md,MIT-LICENSE,shoulda-matchers.gemspec}`.
      split("\x0")
  end
  s.require_paths = ["lib"]

  s.required_ruby_version = '>= 2.2.0'
  s.add_dependency('activesupport', '>= 4.2.0')
end
