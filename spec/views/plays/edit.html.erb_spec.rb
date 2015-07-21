require 'rails_helper'

RSpec.describe "plays/edit", type: :view do
  before(:each) do
    @play = assign(:play, Play.create!(
      :team => "MyString",
      :play_type => "MyString",
      :direction => "MyString",
      :yards => 1
    ))
  end

  it "renders the edit play form" do
    render

    assert_select "form[action=?][method=?]", play_path(@play), "post" do

      assert_select "input#play_team[name=?]", "play[team]"

      assert_select "input#play_play_type[name=?]", "play[play_type]"

      assert_select "input#play_direction[name=?]", "play[direction]"

      assert_select "input#play_yards[name=?]", "play[yards]"
    end
  end
end
