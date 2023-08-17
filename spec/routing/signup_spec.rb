require "rails_helper"

RSpec.describe "GET /users/sign_up", type: :routing do
  it "does not route to sign up" do
    expect(get("/users/sign_up")).not_to be_routable
  end
end