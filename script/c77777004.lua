-- Horny Maiden Lana
-- Coded by FunnyBones777
-- Artwork from https://www.pixiv.net/en/artworks/60083683
local s,id=GetID()
function s.initial_effect(c)
	aux.AddUnionProcedure(c,aux.FilterBoolFunction(Card.IsSetCard,beasts))
	--Atk up
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_EQUIP)
	e1:SetCode(EFFECT_UPDATE_ATTACK)
	e1:SetValue(777)
	c:RegisterEffect(e1)
	--Def up
	local e2=e1:Clone()
	e2:SetCode(EFFECT_UPDATE_DEFENSE)
	c:RegisterEffect(e2)
end