class Battlemech < ApplicationRecord
  validates :name, :tech_base, :battle_value, :cost, :tonnage, :year_made, presence: true
  validates :serial, uniqueness: true, allow_nil: true
  
  validates :battle_value, :cost, :tonnage, :year_made, numericality: { only_integer: true, greater_than: 0 }
  
  validates :base_walk, :base_run, :base_jump, :base_heat_sinks, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
  #all armor values sould be greater than or equal to zero
  validates :hp_head_armor, :hp_ct_front_armor, :hp_ct_rear_armor, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :hp_lt_front_armor, :hp_lt_rear_armor, :hp_rt_front_armor, :hp_rt_rear_armor, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :hp_la_armor, :hp_ll_armor, :hp_ra_armor, :hp_rl_armor, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
  #internal structure hp should always be at least 1 for all sections
  validates :hp_head_internal, :hp_ct_internal, :hp_lt_internal, :hp_rt_internal, numericality: { only_integer: true, greater_than: 0 }
  validates :hp_la_internal, :hp_ll_internal, :hp_ra_internal, :hp_rl_internal, numericality: { only_integer: true, greater_than: 0 }
end
