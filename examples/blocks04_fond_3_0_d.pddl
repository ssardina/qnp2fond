(define (domain FOND_blocks-clear-x_3_0)
    (:requirements :non-deterministic)
    (:types counter bit)
    (:constants nabove_A nother_A - counter b0 b1 b2 b3 - bit)
    (:predicates
        (zero ?c - counter)
        (q ?c - counter)
        (bitvalue ?b - bit)
        (hold_A)
        (hold-other_A)
        (some-below_A)
    )

    (:action Set_nabove_A_b0
        :precondition (and (not (q nabove_A)) (not (q nother_A)) (bitvalue b0))
        :effect (and (q nabove_A) (not (bitvalue b0)))
    )
    (:action Set_nabove_A_b1
        :precondition (and (not (q nabove_A)) (not (q nother_A)) (bitvalue b1) (not (bitvalue b0)))
        :effect (and (q nabove_A) (not (bitvalue b1)) (bitvalue b0))
    )
    (:action Set_nabove_A_b2
        :precondition (and (not (q nabove_A)) (not (q nother_A)) (bitvalue b2) (not (bitvalue b1)) (not (bitvalue b0)))
        :effect (and (q nabove_A) (not (bitvalue b2)) (bitvalue b1) (bitvalue b0))
    )
    (:action Set_nabove_A_b3
        :precondition (and (not (q nabove_A)) (not (q nother_A)) (bitvalue b3) (not (bitvalue b2)) (not (bitvalue b1)) (not (bitvalue b0)))
        :effect (and (q nabove_A) (not (bitvalue b3)) (bitvalue b2) (bitvalue b1) (bitvalue b0))
    )
    (:action Set_nother_A_b0
        :precondition (and (not (q nabove_A)) (not (q nother_A)) (bitvalue b0))
        :effect (and (q nother_A) (not (bitvalue b0)))
    )
    (:action Set_nother_A_b1
        :precondition (and (not (q nabove_A)) (not (q nother_A)) (bitvalue b1) (not (bitvalue b0)))
        :effect (and (q nother_A) (not (bitvalue b1)) (bitvalue b0))
    )
    (:action Set_nother_A_b2
        :precondition (and (not (q nabove_A)) (not (q nother_A)) (bitvalue b2) (not (bitvalue b1)) (not (bitvalue b0)))
        :effect (and (q nother_A) (not (bitvalue b2)) (bitvalue b1) (bitvalue b0))
    )
    (:action Set_nother_A_b3
        :precondition (and (not (q nabove_A)) (not (q nother_A)) (bitvalue b3) (not (bitvalue b2)) (not (bitvalue b1)) (not (bitvalue b0)))
        :effect (and (q nother_A) (not (bitvalue b3)) (bitvalue b2) (bitvalue b1) (bitvalue b0))
    )
    (:action Unset_nabove_A
        :precondition (and (q nabove_A))
        :effect (and (not (q nabove_A)))
    )
    (:action Unset_nother_A
        :precondition (and (q nother_A))
        :effect (and (not (q nother_A)))
    )
    (:action Pick-x-some-below
        :precondition (and (zero nabove_A) (not (hold_A)) (not (hold-other_A)) (some-below_A) (not (q nother_A)))
        :effect (and (not (zero nother_A)) (hold_A) (not (some-below_A)))
    )
    (:action Pick-x-none-below
        :precondition (and (zero nabove_A) (not (hold_A)) (not (hold-other_A)) (not (some-below_A)))
        :effect (and (hold_A))
    )
    (:action Pick-above-x
        :precondition (and (not (zero nabove_A)) (not (hold_A)) (not (hold-other_A)) (q nabove_A))
        :effect (and (oneof (zero nabove_A) (not (zero nabove_A))) (hold-other_A))
    )
    (:action Pick-other
        :precondition (and (not (zero nother_A)) (not (hold_A)) (not (hold-other_A)) (q nother_A))
        :effect (and (oneof (zero nother_A) (not (zero nother_A))) (hold-other_A))
    )
    (:action Put-x-on-table
        :precondition (and (hold_A))
        :effect (and (not (hold_A)))
    )
    (:action Put-x-above-some
        :precondition (and (not (zero nother_A)) (hold_A) (q nother_A))
        :effect (and (oneof (zero nother_A) (not (zero nother_A))) (not (hold_A)) (some-below_A))
    )
    (:action Put-aside
        :precondition (and (hold-other_A) (not (q nother_A)))
        :effect (and (not (zero nother_A)) (not (hold-other_A)))
    )
    (:action Put-above-x
        :precondition (and (hold-other_A) (not (q nabove_A)))
        :effect (and (not (zero nabove_A)) (not (hold-other_A)))
    )
)


(planprog Degree10-110-PFILE110)
(:domain blocksworld)
(:objects b1 b2 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(clear b1)
(ftrue)
)
(:initnode n0)
(:transitions
(n0 n1 (on-table b1) )
(n1 n2 (clear b1) )
(n2 n3 (on-table b1) )
(n3 n4 (and (on-table b1) (on-table b2)) )
(n4 n5 (holding b2) )
(n5 n6 (on b1 b2) )
(n6 n7 (on-table b2) )
(n7 n8 (on-table b1) )
(n8 n9 (on-table b2) )
(n9 n10 (clear b2) )
(n2 n9 (arm-empty) )
(n0 n6 (on-table b2) )
(n10 n1 (arm-empty) )
(n8 n4 (on b1 b2) )
(n1 n10 (arm-empty) )
(n5 n3 (clear b2) )
(n0 n4 (holding b2) )
(n7 n4 (and (on-table b1) (on-table b2)) )
(n1 n7 (on b1 b2) )
(n3 n9 (on b2 b1) )
(n5 n0 (and (clear b1) (clear b2)) )
(n8 n3 (and (on-table b1) (on-table b2)) )
(n1 n4 (holding b2) )
(n8 n2 (clear b1) )
(n9 n6 (clear b1) )
(n7 n9 (on-table b2) )
(n4 n9 (arm-empty) )
(n8 n6 (on b2 b1) )
(n1 n6 (and (on-table b1) (on-table b2)) )
(n4 n3 (clear b1) )
(n9 n8 (on-table b1) )
(n4 n7 (and (clear b1) (clear b2)) )
(n5 n8 (on b1 b2) )
(n2 n8 (on b2 b1) )
(n2 n4 (arm-empty) )
(n4 n1 (clear b2) )
(n3 n1 (holding b2) )
(n1 n8 (clear b1) )
(n3 n10 (clear b2) )
(n10 n6 (on b1 b2) )
(n3 n2 (on-table b2) )
(n9 n4 (on b1 b2) )
(n9 n7 (on b1 b2) )
(n9 n1 (clear b1) )
(n3 n7 (clear b2) )
(n10 n8 (and (clear b1) (clear b2)) )
(n7 n3 (on b2 b1) )
(n4 n0 (arm-empty) )
(n5 n10 (clear b1) )
(n9 n2 (holding b1) )
(n4 n2 (and (clear b1) (clear b2)) )
(n6 n5 (holding b1) )
(n0 n7 (on-table b1) )
(n1 n0 (on b1 b2) )
(n4 n6 (on-table b2) )
(n10 n7 (arm-empty) )
(n6 n1 (on b1 b2) )
(n8 n1 (clear b1) )
(n5 n2 (and (clear b1) (clear b2)) )
(n6 n8 (on-table b2) )
(n8 n0 (on b1 b2) )
(n7 n10 (and (clear b1) (clear b2)) )
(n2 n5 (and (on-table b1) (on-table b2)) )
(n0 n5 (holding b1) )
(n10 n4 (on-table b2) )
(n0 n9 (holding b2) )
(n0 n10 (and (clear b1) (clear b2)) )
(n8 n10 (on b1 b2) )
(n10 n5 (on-table b2) )
(n7 n0 (holding b2) )
(n6 n4 (clear b2) )
(n4 n10 (on-table b2) )
(n0 n8 (clear b2) )
(n3 n5 (arm-empty) )
(n9 n3 (clear b1) )
(n5 n1 (on-table b1) )
(n6 n0 (clear b2) )
(n5 n4 (clear b1) )
(n6 n3 (and (on-table b1) (on-table b2)) )
(n0 n2 (on b2 b1) )
(n10 n2 (on-table b1) )
(n10 n3 (clear b1) )
(n2 n6 (holding b1) )
(n10 n9 (on b2 b1) )
(n6 n10 (and (on-table b1) (on-table b2)) )
(n2 n7 (holding b2) )
(n8 n5 (and (on-table b1) (on-table b2)) )
(n5 n9 (on-table b1) )
(n7 n6 (on-table b2) )
(n2 n0 (clear b1) )
(n2 n1 (on-table b2) )
(n8 n7 (on-table b1) )
(n10 n0 (holding b1) )
(n2 n10 (arm-empty) )
(n1 n9 (clear b2) )
(n6 n2 (holding b1) )
(n0 n3 (on-table b1) )
(n7 n1 (holding b2) )
(n4 n8 (clear b1) )
(n3 n6 (on-table b2) )
(n5 n7 (arm-empty) )
(n6 n9 (on-table b1) )
(n3 n0 (and (on-table b1) (on-table b2)) )
(n3 n8 (on b1 b2) )
(n7 n2 (and (on-table b1) (on-table b2)) )
(n1 n3 (holding b2) )
(n9 n0 (on b2 b1) )
(n1 n5 (on b2 b1) )
(n9 n5 (on-table b2) )
(n7 n5 (and (clear b1) (clear b2)) )
)
)