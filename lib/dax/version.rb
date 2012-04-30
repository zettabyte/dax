# encoding: utf-8
class Dax
  module Version
    MAJOR = 0
    MINOR = 0
    TINY  = 1
  end
  VERSION = [Version::MAJOR, Version::MINOR, Version::TINY].join('.')
end
