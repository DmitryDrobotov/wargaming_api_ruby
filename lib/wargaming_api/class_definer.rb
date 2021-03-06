[
  "wot/account/list",
  "wot/account/info",
  "wot/account/tanks",
  "wot/account/achievements",
  "wot/auth/login",
  "wot/auth/prolongate",
  "wot/auth/logout",
  "wot/stronghold/info",
  "wot/stronghold/buildings",
  "wot/stronghold/accountstats",
  "wot/stronghold/plannedbattles",
  "wot/globalmap/claninfo",
  "wot/globalmap/info",
  "wot/globalmap/fronts",
  "wot/globalmap/clanbattles",
  "wot/globalmap/provinces",
  "wot/globalmap/clanprovinces",
  "wot/encyclopedia/tanks",
  "wot/encyclopedia/tankinfo",
  "wot/encyclopedia/vehicles",
  "wot/encyclopedia/vehicleprofile",
  "wot/encyclopedia/tankengines",
  "wot/encyclopedia/tankturrets",
  "wot/encyclopedia/tankradios",
  "wot/encyclopedia/tankchassis",
  "wot/encyclopedia/tankguns",
  "wot/encyclopedia/achievements",
  "wot/encyclopedia/info",
  "wot/encyclopedia/arenas",
  "wot/encyclopedia/personalmissions",
  "wot/encyclopedia/provisions",
  "wot/encyclopedia/boosters",
  "wot/ratings/types",
  "wot/ratings/dates",
  "wot/ratings/accounts",
  "wot/ratings/neighbors",
  "wot/ratings/top",
  "wot/clanratings/types",
  "wot/clanratings/dates",
  "wot/clanratings/clans",
  "wot/clanratings/neighbors",
  "wot/clanratings/top",
  "wot/tanks/stats",
  "wot/tanks/achievements",
  "wot/regularteams/list",
  "wot/regularteams/info",
  "wotb/account/list",
  "wotb/account/info",
  "wotb/account/achievements",
  "wotb/encyclopedia/vehicles",
  "wotb/encyclopedia/vehicleprofiles",
  "wotb/encyclopedia/modules",
  "wotb/encyclopedia/provisions",
  "wotb/encyclopedia/info",
  "wotb/tanks/stats",
  "wotb/tanks/achievements",
  "wowp/account/list",
  "wowp/account/info",
  "wowp/account/planes",
  "wowp/encyclopedia/planes",
  "wowp/encyclopedia/planeinfo",
  "wowp/encyclopedia/planemodules",
  "wowp/encyclopedia/planeupgrades",
  "wowp/encyclopedia/planespecification",
  "wowp/encyclopedia/achievements",
  "wowp/encyclopedia/info",
  "wowp/ratings/types",
  "wowp/ratings/accounts",
  "wowp/ratings/neighbors",
  "wowp/ratings/top",
  "wowp/ratings/dates",
  "wows/account/list",
  "wows/account/info",
  "wows/account/achievements",
  "wows/encyclopedia/info",
  "wows/encyclopedia/ships",
  "wows/encyclopedia/achievements",
  "wows/encyclopedia/shipprofile",
  "wows/encyclopedia/modules",
  "wows/encyclopedia/exterior",
  "wows/encyclopedia/upgrades",
  "wows/encyclopedia/accountlevels",
  "wows/ships/stats",
  "wgn/account/list",
  "wgn/account/info",
  "wgn/wargag/content",
  "wgn/wargag/search",
  "wgn/wargag/comments",
  "wgn/wargag/categories",
  "wgn/wargag/tags",
  "wgn/wargag/rate",
  "wgn/wargag/newcomment",
  "wgn/wargag/deletecomment",
  "wgn/league/leagues",
  "wgn/league/tournaments",
  "wgn/league/grid",
  "wgn/league/matches",
  "wgn/league/teams",
  "wgn/league/teaminfo",
  "wgn/league/halloffame",
  "wgn/league/players",
  "wgn/league/playerinfo",
  "wgn/clans/list",
  "wgn/clans/info",
  "wgn/clans/membersinfo",
  "wgn/clans/glossary",
  "wgn/clans/messageboard",
  "wgn/wgtv/tags",
  "wgn/wgtv/videos",
  "wgn/wgtv/vehicles",
  "wgn/servers/info"
].each do |path|
  module_name, parent_class_name, child_class_name = path.split('/').map(&:humanize)
  module_class = "WargamingApi::#{module_name}".constantize
  module_class.const_set(parent_class_name, Class.new) if !module_class.const_defined?(parent_class_name)
  parent_class = "WargamingApi::#{module_name}::#{parent_class_name}".constantize
  parent_class.const_set(child_class_name, Class.new(WargamingApi::Base))
end
