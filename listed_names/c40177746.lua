--イーバ
--EBE
--Scripted by Eerie Code
function c40177746.initial_effect(c)
	--search
	local e1=Effect.CreateEffect(c)
	e1:SetDescription(aux.Stringid(40177746,0))
	e1:SetCategory(CATEGORY_TOHAND+CATEGORY_SEARCH)
	e1:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_TRIGGER_O)
	e1:SetCode(EVENT_TO_GRAVE)
	e1:SetProperty(EFFECT_FLAG_DELAY)
	e1:SetCountLimit(1,40177746)
	e1:SetTarget(c40177746.thtg)
	e1:SetOperation(c40177746.thop)
	c:RegisterEffect(e1)
end
c40177746.listed_names={40177746}
function c40177746.cfilter(c)
	return (c:IsFaceup() or c:IsLocation(LOCATION_GRAVE)) and c:IsRace(RACE_FAIRY) and c:IsAttribute(ATTRIBUTE_LIGHT) and c:IsAbleToRemoveAsCost()
end
function c40177746.filter(c)
	return c:IsLevelBelow(2) and c:IsRace(RACE_FAIRY) and c:IsAttribute(ATTRIBUTE_LIGHT) and not c:IsCode(40177746) and c:IsAbleToHand()
end
function c40177746.thtg(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return Duel.IsExistingMatchingCard(c40177746.cfilter,tp,LOCATION_MZONE+LOCATION_GRAVE,0,1,e:GetHandler())
		and Duel.IsExistingMatchingCard(c40177746.filter,tp,LOCATION_DECK,0,1,nil) end
	local dg=Duel.GetMatchingGroup(c40177746.filter,tp,LOCATION_DECK,0,nil)
	local ct=math.min(2,dg:GetClassCount(Card.GetCode))
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_REMOVE)
	local rg=Duel.SelectMatchingCard(tp,c40177746.cfilter,tp,LOCATION_MZONE+LOCATION_GRAVE,0,1,ct,e:GetHandler())
	local rc=Duel.Remove(rg,POS_FACEUP,REASON_COST)
	Duel.SetTargetParam(rc)
	Duel.SetOperationInfo(0,CATEGORY_TOHAND,nil,rc,tp,LOCATION_DECK)
end
function c40177746.thop(e,tp,eg,ep,ev,re,r,rp)
	local dg=Duel.GetMatchingGroup(c40177746.filter,tp,LOCATION_DECK,0,nil)
	local ct=Duel.GetChainInfo(0,CHAININFO_TARGET_PARAM)
	if dg:GetClassCount(Card.GetCode)==0 or dg:GetClassCount(Card.GetCode)<ct then return end
	local g=Group.CreateGroup()
	for i=1,ct do
		local tc=dg:Select(tp,1,1,nil):GetFirst()
		g:AddCard(tc)
		dg:Remove(Card.IsCode,nil,tc:GetCode())
	end
	Duel.SendtoHand(g,nil,REASON_EFFECT)
	Duel.ConfirmCards(1-tp,g)
end
