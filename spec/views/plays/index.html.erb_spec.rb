require 'rails_helper'

RSpec.describe "plays/index", type: :view do
  before(:each) do
    @play1 = FactoryGirl.create(:play)
    @play2 = FactoryGirl.create(:play)
    assign(:plays, [@play1, @play2])
  end

  it "renders a list of plays" do
    render
    assert_select "tr>td", :text => @play1.team.to_s, :count => 1
    # assert_select "tr>td", :text => @play1.play_type, :count => 1
    # assert_select "tr>td", :text => @play1.direction, :count => 1
    assert_select "tr>td", :text => @play1.yards.to_s, :count => 2
  end
end
