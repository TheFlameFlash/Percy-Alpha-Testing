--Queens Double (DOR)
--scripted by GameMaster (GM)
function c511005772.initial_effect(c)
--atk/def +700 Princess of Tsurugi
local e1=Effect.CreateEffect(c)
e1:SetCategory(CATEGORY_ATKCHANGE+CATEGORY_DEFCHANGE)
e1:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_FLIP)
e1:SetOperation(c511005772.operation)
c:RegisterEffect(e1)
end
c511005772.listed_names={51371017}
function c511005772.atktg(e,c)
return Duel.GetMatchingGroup(c511005772.filter,tp,LOCATION_MZONE,LOCATION_MZONE,nil)
end
function c511005772.filter(c,code)
return c:IsType(TYPE_MONSTER)  and c:IsCode(51371017) and c:IsFaceup()
end
function c511005772.operation(e,tp,eg,ep,ev,re,r,rp)
local g=Duel.GetMatchingGroup(c511005772.filter,tp,LOCATION_MZONE,LOCATION_MZONE,nil)
local tc=g:GetFirst()
while tc do
local e1=Effect.CreateEffect(e:GetHandler())
e1:SetType(EFFECT_TYPE_SINGLE)
e1:SetCode(EFFECT_UPDATE_ATTACK)
e1:SetRange(LOCATION_MZONE)
e1:SetTargetRange(LOCATION_MZONE,LOCATION_MZONE)
e1:SetTarget(c511005772.atktg)
e1:SetValue(700)
e1:SetReset(RESET_EVENT+0x1fe0000)
tc:RegisterEffect(e1)
local e2=e1:Clone()
e2:SetCode(EFFECT_UPDATE_DEFENSE)
tc:RegisterEffect(e2)
tc=g:GetNext()
end
end
