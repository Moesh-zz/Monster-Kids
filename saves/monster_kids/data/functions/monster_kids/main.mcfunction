function monster_kids:player/register if @a[tag=!Register]

function monster_kids:player/check_and_keep_in_bounds

function monster_kids:player/flag_dead_players
function monster_kids:player/refill_items if @a[tag=RefillItems]

function monster_kids:menu/class_selected unless @e[type=area_effect_cloud,name=Main,tag=RoundInProgress]
function monster_kids:menu/spectate unless @e[type=area_effect_cloud,name=Main,tag=RoundInProgress]
function monster_kids:menu/team_selected unless @e[type=area_effect_cloud,name=Main,tag=RoundInProgress]

function monster_kids:testfor_start_round_conditions if @a[score_startRound_min=1]
function monster_kids:start_round if @e[type=area_effect_cloud,name=Main,tag=StartRound]

function monster_kids:round if @e[type=area_effect_cloud,name=Main,tag=RoundInProgress]

function monster_kids:end_round if @e[type=area_effect_cloud,name=Main,tag=EndRound]