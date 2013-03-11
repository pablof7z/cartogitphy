require 'spec_helper'

describe RepositoriesController, type: :controller do
  describe 'GET #index' do
    it "gets the default page" do
      get :index

      expect(response).to be_success
    end
  end
end
