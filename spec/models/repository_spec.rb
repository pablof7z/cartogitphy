require 'spec_helper'

describe Repository do
  before do
    Repository.destroy_all
    ResqueSpec.reset!
  end

  context ".new" do
    it "fails when creating a repo that doesn't exist on github" do
      expect {Repository.create!(name: 'non-existent-repo')}.to raise_error
    end

    it "succeeds when creating a repo that does exist" do
      expect {Repository.create!(name: 'heelhook/cartogitphy')}.to_not raise_error
    end

    it "pushes the repo to the queue to be processed" do
      repo = Repository.create!(name: 'heelhook/cartogitphy')
      Repository.should have_queued(repo.id, repo.name)
    end
  end
end
