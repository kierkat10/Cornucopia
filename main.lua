-- initialize mod namespace and config
if not Cornucopia then Cornucopia = {} end
SMODS.Cornucopia = Cornucopia
COR = Cornucopia

Cornucopia.config = SMODS.current_mod.config or {}

-- nil check function
function COR.nc(value, ...)
    for i = 1, select("#", ...) do
        if value == nil or type(value) ~= "table" then
            return nil
        end
        value = value[select(i, ...)]
    end
    return value
end