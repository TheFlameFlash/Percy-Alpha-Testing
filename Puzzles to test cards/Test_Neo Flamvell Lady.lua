--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Main Deck
Debug.AddCard(40975574,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(49959355,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Hand
Debug.AddCard(14558127,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(41160595,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(9411399,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(5758500,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--GY
Debug.AddCard(75878039,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Monster Zones
Debug.AddCard(101008014,0,0,LOCATION_MZONE,1,1,true)
--GY
Debug.AddCard(34230233,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()