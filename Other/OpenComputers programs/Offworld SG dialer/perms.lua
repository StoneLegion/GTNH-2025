local perms = {}

function perms.getListPermittedPlanets(tier)
  local list = {}
  table.insert(list, "Overworld")
  return list
end

return perms