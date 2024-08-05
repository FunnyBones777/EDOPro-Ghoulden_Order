-- Fukai of the Ghoulden Order
-- Coded by FunnyBones777
local s,id=GetID()
function s.initial_effect(c)
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetProperty(EFFECT_FLAG_SINGLE_RANGE)
	e1:SetRange(LOCATION_MZONE)
	e1:SetCode(EFFECT_UPDATE_ATTACK)
	e1:SetValue(s.value)
	c:RegisterEffect(e1)
end
function s.value(e,c)
	return Duel.GetMatchingGroupCount(Card.IsSetCard,0x420a:GetControler(),LOCATION_GRAVE,0,nil)*470
end
s.listed_series={0x420a}