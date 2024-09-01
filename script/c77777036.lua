-- Frenzyflame Origin
local s,id=GetID()
function s.initial_effect(c)
	--Ritual Summon
	local e1=Ritual.AddProcGreater({handler=c,filter=s.ritualfil,extrafil=s.extrafil,location=LOCATION_HAND|LOCATION_GRAVE,extratg=s.extratg})
end
s.listed_series={0x666}
function s.ritualfil(c)
	return c:IsSetCard(0x666) and c:IsRitualMonster()
end
function s.mfilter(c)
	return not Duel.IsPlayerAffectedByEffect() and c:HasLevel() and c:IsRace(RACE_ZOMBIE)
		and c:IsMonster() and c:IsAbleToRemove()
end
function s.extrafil(e,tp,eg,ep,ev,re,r,rp,chk)
	return Duel.GetMatchingGroup(s.mfilter,tp,LOCATION_GRAVE,0,nil)
end
function s.extratg(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return true end
	Duel.SetOperationInfo(0,CATEGORY_REMOVE,nil,1,tp,LOCATION_GRAVE)
end
