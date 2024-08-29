-- Nasty Mutt Kano
-- Coded by FunnyBones777
local s,id=GetID()
function s.initial_effect(c)
	--activate
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_ACTIVATE)
	e1:SetCode(EVENT_FREE_CHAIN)
	c:RegisterEffect(e1)
	--cannot atk
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_FIELD)
	e1:SetCode(EFFECT_CANNOT_ATTACK_ANNOUNCE)
	e1:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
	e1:SetRange(LOCATION_PZONE)
	e1:SetTargetRange(0,1)
	e1:SetCondition(s.atcon)
	c:RegisterEffect(e1)
end
function s.atcon(e)
	return Duel.GetFieldGroupCount(e:GetHandlerPlayer(),0,LOCATION_MZONE)>=3
end
