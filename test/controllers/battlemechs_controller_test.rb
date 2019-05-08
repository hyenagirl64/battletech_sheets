require 'test_helper'

class BattlemechsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battlemech = battlemechs(:one)
  end

  test "should get index" do
    get battlemechs_url
    assert_response :success
  end

  test "should get new" do
    get new_battlemech_url
    assert_response :success
  end

  test "should create battlemech" do
    
    assert_difference('Battlemech.count') do
      testMech = battlemech_to_post_params(@battlemech)
      testMech[:serial] = 'TT-X30'
      
      post battlemechs_url, params: { battlemech: testMech}
    end

    assert_redirected_to battlemech_url(Battlemech.last)
  end

  test "should show battlemech" do
    get battlemech_url(@battlemech)
    assert_response :success
  end

  test "should get edit" do
    get edit_battlemech_url(@battlemech)
    assert_response :success
  end

  test "should update battlemech" do
    testMech = battlemech_to_post_params(@battlemech)
    testMech[:serial] = 'UU-X30'
    
    patch battlemech_url(@battlemech), params: { battlemech: testMech }
    assert_redirected_to battlemech_url(@battlemech)
  end

  test "should destroy battlemech" do
    assert_difference('Battlemech.count', -1) do
      delete battlemech_url(@battlemech)
    end

    assert_redirected_to battlemechs_url
  end
  
  def battlemech_to_post_params(battlemech) 
    return { 
        name: battlemech.name, 
        serial: battlemech.serial, 
        tech_base: battlemech.tech_base,
        year_made: battlemech.year_made,
        battle_value: battlemech.battle_value,
        cost: battlemech.cost,
        tonnage: battlemech.tonnage,
        base_walk: battlemech.base_walk,
        base_run: battlemech.base_run,
        base_jump: battlemech.base_jump,
        base_heat_sinks: battlemech.base_heat_sinks, 
        hp_head_armor: battlemech.hp_head_armor,
        hp_ct_front_armor: battlemech.hp_ct_front_armor,
        hp_ct_rear_armor: battlemech.hp_ct_rear_armor,
        hp_lt_front_armor: battlemech.hp_lt_front_armor,
        hp_lt_rear_armor: battlemech.hp_lt_rear_armor,
        hp_rt_front_armor: battlemech.hp_rt_front_armor,
        hp_rt_rear_armor: battlemech.hp_rt_rear_armor,
        hp_la_armor: battlemech.hp_la_armor,
        hp_ll_armor: battlemech.hp_ll_armor,
        hp_ra_armor: battlemech.hp_ra_armor,
        hp_rl_armor: battlemech.hp_rl_armor,
        hp_head_internal: battlemech.hp_head_internal, 
        hp_ct_internal: battlemech.hp_ct_internal,
        hp_lt_internal: battlemech.hp_lt_internal,
        hp_rt_internal: battlemech.hp_rt_internal,
        hp_la_internal: battlemech.hp_la_internal,
        hp_ll_internal: battlemech.hp_ll_internal,
        hp_ra_internal: battlemech.hp_ra_internal,
        hp_rl_internal: battlemech.hp_rl_internal }
  end
end
