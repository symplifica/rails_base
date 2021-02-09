 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/table_remotes", type: :request do
  # TableRemote. As you add validations to TableRemote, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      TableRemote.create! valid_attributes
      get table_remotes_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      table_remote = TableRemote.create! valid_attributes
      get table_remote_url(table_remote)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_table_remote_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      table_remote = TableRemote.create! valid_attributes
      get edit_table_remote_url(table_remote)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new TableRemote" do
        expect {
          post table_remotes_url, params: { table_remote: valid_attributes }
        }.to change(TableRemote, :count).by(1)
      end

      it "redirects to the created table_remote" do
        post table_remotes_url, params: { table_remote: valid_attributes }
        expect(response).to redirect_to(table_remote_url(TableRemote.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new TableRemote" do
        expect {
          post table_remotes_url, params: { table_remote: invalid_attributes }
        }.to change(TableRemote, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post table_remotes_url, params: { table_remote: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested table_remote" do
        table_remote = TableRemote.create! valid_attributes
        patch table_remote_url(table_remote), params: { table_remote: new_attributes }
        table_remote.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the table_remote" do
        table_remote = TableRemote.create! valid_attributes
        patch table_remote_url(table_remote), params: { table_remote: new_attributes }
        table_remote.reload
        expect(response).to redirect_to(table_remote_url(table_remote))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        table_remote = TableRemote.create! valid_attributes
        patch table_remote_url(table_remote), params: { table_remote: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested table_remote" do
      table_remote = TableRemote.create! valid_attributes
      expect {
        delete table_remote_url(table_remote)
      }.to change(TableRemote, :count).by(-1)
    end

    it "redirects to the table_remotes list" do
      table_remote = TableRemote.create! valid_attributes
      delete table_remote_url(table_remote)
      expect(response).to redirect_to(table_remotes_url)
    end
  end
end