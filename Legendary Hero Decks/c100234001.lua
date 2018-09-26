--Xtra HERO Dread Decimator
-- 2+ "HERO" monsters
-- This card, also any "HERO" monster it points to, gains 100 ATK for each "HERO" monster with different names
-- in your GY. If this card attacks a Defense Position monster, inflict piercing battle damage.
function c100234001.initial_effect(c)
	--link summon
	aux.AddLinkProcedure(c,aux.FilterBoolFunctionEx(Card.IsLinkSetCard,0x8),2)
	c:EnableReviveLimit()
	--atk
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_FIELD)
	e1:SetCode(EFFECT_UPDATE_ATTACK)
	e1:SetRange(LOCATION_MZONE)
	e1:SetTargetRange(LOCATION_MZONE,LOCATION_MZONE)
	e1:SetTarget(c100234001.atktg)
	e1:SetValue(c100234001.atkval)
	c:RegisterEffect(e1)
	--pierce
	local e2=Effect.CreateEffect(c)
	e2:SetType(EFFECT_TYPE_SINGLE)
	e2:SetCode(EFFECT_PIERCE)
	c:RegisterEffect(e2)
end
function c100234001.atktg(e,c)
	return (e:GetHandler():GetLinkedGroup():IsContains(c) or c==e:GetHandler()) and c:IsSetCard(0x8) and c:IsFaceup()
end
function c100234001.atkval(e,c)
	return Duel.GetMatchingGroup(Card.IsSetCard,e:GetHandlerPlayer(),LOCATION_GRAVE,0,nil,0x8):GetClassCount(Card.GetCode)*100
end