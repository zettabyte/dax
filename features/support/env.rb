# encoding: utf-8
PROJECT_ROOT = File.expand_path(File.join('..', '..', '..'), __FILE__)
TEST_ROOT    = File.join(PROJECT_ROOT, 'test')
$:.push File.join(PROJECT_ROOT, 'lib')
require 'dax'

module TestApps
  BASE = File.expand_path(File.join('..', '..', '..', 'test', 'apps'), __FILE__).freeze

  def active_record_test_app
    require File.join(BASE, 'active_record_test_app')
    @active_record_test_app ||= ActiveRecordTestApp.setup
  end

end

World(TestApps)

module LocalFileStoreSetup

  def prepare_local_directory(name)
    @local_directory = File.join(TEST_ROOT, name)
    FileUtils.mkdir_p(@local_directory)
  end
  attr_reader :local_directory

end
World(LocalFileStoreSetup)

