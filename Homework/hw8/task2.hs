 module Main where
  data Suit = Spades | Hearts deriving (Show)
  data Rank = Ten | Jack | Queen | King | Ace deriving(Show)
  type Card = (Rank,Suit)
  type Hand = [Card]

  value :: Rank -> Integer
  cardValue :: Card->Integer
  lowerCard :: Card->Card->Card
  sumValue :: Hand -> Integer
  higherHand :: Hand->Hand -> Hand

  value Ten = 1
  value Jack = 2
  value Queen =3
  value King = 4
  value Ace = 5
  cardValue(rank, suit)= value rank

  lowerCard h t = if cardValue(h) < cardValue(t) then h else t

  sumValue h = foldl(+) 0 (map(\x->cardValue x)h)

  higherHand h h2 = if sumValue(h)> sumValue(h2) then h else h2

  main = do
    print(lowerCard(King, Spades) (Queen, Spades))
    print(sumValue[(King, Spades), (Queen, Spades)])
    print(higherHand[(King, Spades), (Queen, Spades)] [(Jack,Spades),(King,Spades)])
