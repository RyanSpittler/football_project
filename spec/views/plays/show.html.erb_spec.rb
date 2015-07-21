require 'rails_helper'

RSpec.describe "plays/show", type: :view do
  before(:each) do
    @play = FactoryGirl.create(:play)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/#{@play.team}/)
    expect(rendered).to match(/#{@play.play_type}/)
    expect(rendered).to match(/#{@play.direction}/)
    expect(rendered).to match(/#{@play.yards}/)
  end
end
