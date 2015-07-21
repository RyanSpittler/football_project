require 'rails_helper'

RSpec.describe "plays/show", type: :view do
  before(:each) do
    @play = assign(:play, Play.create!(
      :team => "Team",
      :play_type => "Play Type",
      :direction => "Direction",
      :yards => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Team/)
    expect(rendered).to match(/Play Type/)
    expect(rendered).to match(/Direction/)
    expect(rendered).to match(/1/)
  end
end
