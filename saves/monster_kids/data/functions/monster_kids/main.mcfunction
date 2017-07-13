function monster_kids:player/register if @a[tag=!Register]

function monster_kids:player/flag_dead_players
function monster_kids:player/refill_items if @a[tag=RefillItems]

function monster_kids:menu/class_selected unless @e[type=area_effect_cloud,name=Main,tag=RoundInProgress]
function monster_kids:menu/team_selected unless @e[type=area_effect_cloud,name=Main,tag=RoundInProgress]

function monster_kids:game_state/testfor_start_round_conditions if @a[score_startRound_min=1]
function monster_kids:game_state/start_round if @e[type=area_effect_cloud,name=Main,tag=StartRound]

function monster_kids:build_ladder if @e[type=area_effect_cloud,name=Main,tag=RoundInProgress]
function monster_kids:convert_drops if @e[type=area_effect_cloud,name=Main,tag=RoundInProgress]
function monster_kids:mining_effects/determine_effect_level if @e[type=area_effect_cloud,name=Main,tag=RoundInProgress]
function monster_kids:mining_effects/apply_effects if @e[type=area_effect_cloud,name=Main,tag=RoundInProgress]
function monster_kids:scores
function monster_kids:ore_pickup_counter

function monster_kids:game_state/tick_timer_down_and_testfor_end_round if @e[type=area_effect_cloud,name=Main,tag=RoundInProgress]
function monster_kids:game_state/end_round if @e[type=area_effect_cloud,name=Main,tag=EndRound]