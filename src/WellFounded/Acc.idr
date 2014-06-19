module WellFounded.Acc

||| Accessibility (Chapter 7) :
||| An Element x is said to be "Accessible" for a relation r
||| if every element "less than" x according to r is also Accessible.
|||
data Acc : {a : Type} -> (r : a -> a -> Type) -> a -> Type where
    AccIntro : ((y : a) -> r y x -> Acc r y) -> Acc r x


