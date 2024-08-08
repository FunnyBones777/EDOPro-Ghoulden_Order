-- Ghoulden Ritual
-- Coded by FunnyBones777
local s,id=GetID()
function s.initial_effect(c)
	local e1=Ritual.AddProcGreaterCode({c,1,s.extrafil,s.extraop,s.forcedgroup})
	e1:SetCategory(CATEGORY_SPECIAL_SUMMON+CATEGORY_DECKDES)
	c:RegisterEffect(e1)
end
function s.extrafil(e,tp,eg,ep,ev,re,r,rp,chk)
	return Duel.GetFieldGroup(tp,LOCATION_DECK,0)
end
function s.extraop(mat,e,tp,eg,ep,ev,re,r,rp,tc)
	return Duel.SendtoGrave(mat,REASON_EFFECT+REASON_MATERIAL+REASON_RITUAL)
end
function s.forcedgroup(c,e,tp)
	return c:IsLocation(LOCATION_DECK) and c:IsAbleToGrave()
end
