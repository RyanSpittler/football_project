class Play < ActiveRecord::Base
  validates_presence_of :team, :play_type, :direction, :yards
end
