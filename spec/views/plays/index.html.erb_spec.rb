require 'rails_helper'

RSpec.describe "plays/index", type: :view do
  before(:each) do
    assign(:plays, [
      Play.create!(
        :team => "Team",
        :play_type => "Play Type",
        :direction => "Direction",
        :yards => 1
      ),
      Play.create!(
        :team => "Team",
        :play_type => "Play Type",
        :direction => "Direction",
        :yards => 1
      )
    ])
  end

  it "renders a list of plays" do
    render
    assert_select "tr>td", :text => "Team".to_s, :count => 2
    assert_select "tr>td", :text => "Play Type".to_s, :count => 2
    assert_select "tr>td", :text => "Direction".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
