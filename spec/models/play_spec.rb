require 'rails_helper'

RSpec.describe Play, type: :model do
  it { should validate_presence_of(:team) }
  it { should validate_presence_of(:play_type) }
  it { should validate_presence_of(:direction) }
  it { should validate_presence_of(:yards) }
end
