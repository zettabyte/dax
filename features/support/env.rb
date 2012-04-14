# encoding: utf-8
PROJECT_ROOT = File.expand_path(File.join('..', '..', '..'), __FILE__)
TEST_ROOT    = File.join(PROJECT_ROOT, 'test')
$:.push File.join(PROJECT_ROOT, 'lib')
require 'dax'

module LocalFileStoreSetup

  def prepare_local_directory(name)
    @local_directory = File.join(TEST_ROOT, name)
    FileUtils.mkdir_p(@local_directory)
  end
  attr_reader :local_directory

end
World(LocalFileStoreSetup)
