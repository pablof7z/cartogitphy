class Repository < ActiveRecord::Base
  include Resque::Plugins::UniqueJob
  @queue = 'repository'

  validate :must_exist
  after_create :index

  # Make sure the repository exists and is reachable
  def must_exist
    begin
      Octokit.repo(name)
    rescue Octokit::NotFound
      errors.add(:name, "doesn't exist")
    end
  end

  # Pushes the repository to the queue
  def index
    Resque.enqueue(Repository, id, name)
  end

  class << self
    def perform(id, name)
    end
  end
end
