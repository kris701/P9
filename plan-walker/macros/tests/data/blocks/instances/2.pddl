(define (problem BLOCKS-4-0)
(:domain BLOCKS)
(:objects A B C D - block)
(:INIT     
    (HANDEMPTY)
    (CLEAR B)
    (CLEAR D)
    (ONTABLE A)
    (ONTABLE C)
    (ON B A)
    (ON D C)
)
(:goal (AND (ON A B) (ON C D)))
)