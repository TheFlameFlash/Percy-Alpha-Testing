--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Extra Deck
Debug.AddCard(78084378,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(101008032,0,0,LOCATION_EXTRA,0,8)
--Hand
Debug.AddCard(48130397,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(48130397,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Spell & Trap Zones
Debug.AddCard(81223446,0,0,LOCATION_SZONE,1,10)
--Hand
Debug.AddCard(84899094,1,1,LOCATION_HAND,0,POS_FACEDOWN)
--GY
Debug.AddCard(5821478,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(5821478,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(5821478,1,1,LOCATION_GRAVE,0,POS_FACEUP)
--GY
Debug.AddCard(5821478,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(5821478,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(5821478,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(5821478,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Monster Zones
Debug.AddCard(2220237,0,0,LOCATION_MZONE,4,1,true)
Debug.AddCard(1861629,0,0,LOCATION_MZONE,2,1,true)
Debug.AddCard(1861629,0,0,LOCATION_MZONE,5,1,true)
Debug.AddCard(32448765,0,0,LOCATION_MZONE,0,1,true)

--Monster Zones
Debug.AddCard(2220237,1,1,LOCATION_MZONE,4,1,true)
Debug.AddCard(1861629,1,1,LOCATION_MZONE,2,1,true)
Debug.AddCard(32448765,1,1,LOCATION_MZONE,0,1,true)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()