require 'rails_helper'

RSpec.describe "plays/new", type: :view do
  before(:each) do
    assign(:play, Play.new(
      :team => "MyString",
      :play_type => "MyString",
      :direction => "MyString",
      :yards => 1
    ))
  end

  it "renders new play form" do
    render

    assert_select "form[action=?][method=?]", plays_path, "post" do

      assert_select "input#play_team[name=?]", "play[team]"

      assert_select "input#play_play_type[name=?]", "play[play_type]"

      assert_select "input#play_direction[name=?]", "play[direction]"

      assert_select "input#play_yards[name=?]", "play[yards]"
    end
  end
end
