local function foo(t)
  local keys = {}
  for k, v in pairs(t) do
    table.insert(keys, k)
  end

  for _, k in ipairs(keys) do
    local v = t[k]
    if type(v) == "table" then
      foo(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)