class Play < ActiveRecord::Base
  VALID_PLAY_TYPES = %w(pass run)
  VALID_DIRECTIONS = %w(left right)
  
  validates_presence_of :team, :play_type, :direction, :yards
  validates_inclusion_of :play_type, in: VALID_PLAY_TYPES
  validates_inclusion_of :direction, in: VALID_DIRECTIONS
end
