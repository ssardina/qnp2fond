(define (domain FOND_full_complete_6_3)
    (:requirements :non-deterministic)
    (:types variable depth bit)
    (:constants nabove_A nother_A - variable d0 d1 d2 d3 - depth b0 b1 b2 b3 b4 b5 - bit)
    (:predicates
        (zero ?X - variable)
        (stack-depth ?d - depth)
        (stack-index ?X - variable ?d - depth)
        (stack-in ?X - variable)
        (counter ?d - depth ?b - bit)
        (hold_A)
        (hold-other_A)
        (some-below_A)
    )

    (:action PUSH_at_d0_b0
        :parameters (?X - variable)
        :precondition (and (stack-depth d0) (not (counter d0 b0)))
        :effect (and (not (stack-depth d0)) (stack-depth d1) (stack-in ?X) (stack-index ?X d1) (counter d0 b0))
    )
    (:action PUSH_at_d0_b1
        :parameters (?X - variable)
        :precondition (and (stack-depth d0) (counter d0 b0) (not (counter d0 b1)))
        :effect (and (not (stack-depth d0)) (stack-depth d1) (stack-in ?X) (stack-index ?X d1) (not (counter d0 b0)) (counter d0 b1))
    )
    (:action PUSH_at_d0_b2
        :parameters (?X - variable)
        :precondition (and (stack-depth d0) (counter d0 b0) (counter d0 b1) (not (counter d0 b2)))
        :effect (and (not (stack-depth d0)) (stack-depth d1) (stack-in ?X) (stack-index ?X d1) (not (counter d0 b0)) (not (counter d0 b1)) (counter d0 b2))
    )
    (:action PUSH_at_d0_b3
        :parameters (?X - variable)
        :precondition (and (stack-depth d0) (counter d0 b0) (counter d0 b1) (counter d0 b2) (not (counter d0 b3)))
        :effect (and (not (stack-depth d0)) (stack-depth d1) (stack-in ?X) (stack-index ?X d1) (not (counter d0 b0)) (not (counter d0 b1)) (not (counter d0 b2)) (counter d0 b3))
    )
    (:action PUSH_at_d0_b4
        :parameters (?X - variable)
        :precondition (and (stack-depth d0) (counter d0 b0) (counter d0 b1) (counter d0 b2) (counter d0 b3) (not (counter d0 b4)))
        :effect (and (not (stack-depth d0)) (stack-depth d1) (stack-in ?X) (stack-index ?X d1) (not (counter d0 b0)) (not (counter d0 b1)) (not (counter d0 b2)) (not (counter d0 b3)) (counter d0 b4))
    )
    (:action PUSH_at_d0_b5
        :parameters (?X - variable)
        :precondition (and (stack-depth d0) (counter d0 b0) (counter d0 b1) (counter d0 b2) (counter d0 b3) (counter d0 b4) (not (counter d0 b5)))
        :effect (and (not (stack-depth d0)) (stack-depth d1) (stack-in ?X) (stack-index ?X d1) (not (counter d0 b0)) (not (counter d0 b1)) (not (counter d0 b2)) (not (counter d0 b3)) (not (counter d0 b4)) (counter d0 b5))
    )
    (:action PUSH_at_d1_b0
        :parameters (?X - variable)
        :precondition (and (stack-depth d1) (not (stack-in ?X)) (not (counter d1 b0)))
        :effect (and (not (stack-depth d1)) (stack-depth d2) (stack-in ?X) (stack-index ?X d2) (counter d1 b0))
    )
    (:action PUSH_at_d1_b1
        :parameters (?X - variable)
        :precondition (and (stack-depth d1) (not (stack-in ?X)) (counter d1 b0) (not (counter d1 b1)))
        :effect (and (not (stack-depth d1)) (stack-depth d2) (stack-in ?X) (stack-index ?X d2) (not (counter d1 b0)) (counter d1 b1))
    )
    (:action PUSH_at_d1_b2
        :parameters (?X - variable)
        :precondition (and (stack-depth d1) (not (stack-in ?X)) (counter d1 b0) (counter d1 b1) (not (counter d1 b2)))
        :effect (and (not (stack-depth d1)) (stack-depth d2) (stack-in ?X) (stack-index ?X d2) (not (counter d1 b0)) (not (counter d1 b1)) (counter d1 b2))
    )
    (:action PUSH_at_d1_b3
        :parameters (?X - variable)
        :precondition (and (stack-depth d1) (not (stack-in ?X)) (counter d1 b0) (counter d1 b1) (counter d1 b2) (not (counter d1 b3)))
        :effect (and (not (stack-depth d1)) (stack-depth d2) (stack-in ?X) (stack-index ?X d2) (not (counter d1 b0)) (not (counter d1 b1)) (not (counter d1 b2)) (counter d1 b3))
    )
    (:action PUSH_at_d1_b4
        :parameters (?X - variable)
        :precondition (and (stack-depth d1) (not (stack-in ?X)) (counter d1 b0) (counter d1 b1) (counter d1 b2) (counter d1 b3) (not (counter d1 b4)))
        :effect (and (not (stack-depth d1)) (stack-depth d2) (stack-in ?X) (stack-index ?X d2) (not (counter d1 b0)) (not (counter d1 b1)) (not (counter d1 b2)) (not (counter d1 b3)) (counter d1 b4))
    )
    (:action PUSH_at_d1_b5
        :parameters (?X - variable)
        :precondition (and (stack-depth d1) (not (stack-in ?X)) (counter d1 b0) (counter d1 b1) (counter d1 b2) (counter d1 b3) (counter d1 b4) (not (counter d1 b5)))
        :effect (and (not (stack-depth d1)) (stack-depth d2) (stack-in ?X) (stack-index ?X d2) (not (counter d1 b0)) (not (counter d1 b1)) (not (counter d1 b2)) (not (counter d1 b3)) (not (counter d1 b4)) (counter d1 b5))
    )
    (:action PUSH_at_d2_b0
        :parameters (?X - variable)
        :precondition (and (stack-depth d2) (not (stack-in ?X)) (not (counter d2 b0)))
        :effect (and (not (stack-depth d2)) (stack-depth d3) (stack-in ?X) (stack-index ?X d3) (counter d2 b0))
    )
    (:action PUSH_at_d2_b1
        :parameters (?X - variable)
        :precondition (and (stack-depth d2) (not (stack-in ?X)) (counter d2 b0) (not (counter d2 b1)))
        :effect (and (not (stack-depth d2)) (stack-depth d3) (stack-in ?X) (stack-index ?X d3) (not (counter d2 b0)) (counter d2 b1))
    )
    (:action PUSH_at_d2_b2
        :parameters (?X - variable)
        :precondition (and (stack-depth d2) (not (stack-in ?X)) (counter d2 b0) (counter d2 b1) (not (counter d2 b2)))
        :effect (and (not (stack-depth d2)) (stack-depth d3) (stack-in ?X) (stack-index ?X d3) (not (counter d2 b0)) (not (counter d2 b1)) (counter d2 b2))
    )
    (:action PUSH_at_d2_b3
        :parameters (?X - variable)
        :precondition (and (stack-depth d2) (not (stack-in ?X)) (counter d2 b0) (counter d2 b1) (counter d2 b2) (not (counter d2 b3)))
        :effect (and (not (stack-depth d2)) (stack-depth d3) (stack-in ?X) (stack-index ?X d3) (not (counter d2 b0)) (not (counter d2 b1)) (not (counter d2 b2)) (counter d2 b3))
    )
    (:action PUSH_at_d2_b4
        :parameters (?X - variable)
        :precondition (and (stack-depth d2) (not (stack-in ?X)) (counter d2 b0) (counter d2 b1) (counter d2 b2) (counter d2 b3) (not (counter d2 b4)))
        :effect (and (not (stack-depth d2)) (stack-depth d3) (stack-in ?X) (stack-index ?X d3) (not (counter d2 b0)) (not (counter d2 b1)) (not (counter d2 b2)) (not (counter d2 b3)) (counter d2 b4))
    )
    (:action PUSH_at_d2_b5
        :parameters (?X - variable)
        :precondition (and (stack-depth d2) (not (stack-in ?X)) (counter d2 b0) (counter d2 b1) (counter d2 b2) (counter d2 b3) (counter d2 b4) (not (counter d2 b5)))
        :effect (and (not (stack-depth d2)) (stack-depth d3) (stack-in ?X) (stack-index ?X d3) (not (counter d2 b0)) (not (counter d2 b1)) (not (counter d2 b2)) (not (counter d2 b3)) (not (counter d2 b4)) (counter d2 b5))
    )
    (:action POP_at_d1
        :parameters (?X - variable)
        :precondition (and (stack-depth d1) (stack-index ?X d1) (stack-in ?X))
        :effect (and (not (stack-depth d1)) (not (stack-index ?X d1)) (not (stack-in ?X)) (stack-depth d0))
    )
    (:action POP_at_d2
        :parameters (?X - variable)
        :precondition (and (stack-depth d2) (stack-index ?X d2) (stack-in ?X))
        :effect (and (not (stack-depth d2)) (not (stack-index ?X d2)) (not (stack-in ?X)) (stack-depth d1))
    )
    (:action POP_at_d3
        :parameters (?X - variable)
        :precondition (and (stack-depth d3) (stack-index ?X d3) (stack-in ?X))
        :effect (and (not (stack-depth d3)) (not (stack-index ?X d3)) (not (stack-in ?X)) (stack-depth d2))
    )
    (:action MOVE_b0
        :precondition (and (stack-depth d0) (not (top-counter b0)))
        :effect (and (top-counter 0))
    )
    (:action MOVE_b1
        :precondition (and (stack-depth d0) (top-counter b0) (not (top-counter b1)))
        :effect (and (not (top-counter b0)) (top-counter 1))
    )
    (:action MOVE_b2
        :precondition (and (stack-depth d0) (top-counter b0) (top-counter b1) (not (top-counter b2)))
        :effect (and (not (top-counter b0)) (not (top-counter b1)) (top-counter 2))
    )
    (:action MOVE_b3
        :precondition (and (stack-depth d0) (top-counter b0) (top-counter b1) (top-counter b2) (not (top-counter b3)))
        :effect (and (not (top-counter b0)) (not (top-counter b1)) (not (top-counter b2)) (top-counter 3))
    )
    (:action MOVE_b4
        :precondition (and (stack-depth d0) (top-counter b0) (top-counter b1) (top-counter b2) (top-counter b3) (not (top-counter b4)))
        :effect (and (not (top-counter b0)) (not (top-counter b1)) (not (top-counter b2)) (not (top-counter b3)) (top-counter 4))
    )
    (:action MOVE_b5
        :precondition (and (stack-depth d0) (top-counter b0) (top-counter b1) (top-counter b2) (top-counter b3) (top-counter b4) (not (top-counter b5)))
        :effect (and (not (top-counter b0)) (not (top-counter b1)) (not (top-counter b2)) (not (top-counter b3)) (not (top-counter b4)) (top-counter 5))
    )
    (:action Pick-x-some-below
        :precondition (and (zero nabove_A) (not (hold_A)) (not (hold-other_A)) (some-below_A) (not (stack-in nother_A)))
        :effect (and (not (zero nother_A)) (hold_A) (not (some-below_A)))
    )
    (:action Pick-x-none-below
        :precondition (and (zero nabove_A) (not (hold_A)) (not (hold-other_A)) (not (some-below_A)))
        :effect (and (hold_A))
    )
    (:action Pick-above-x_f0_d1
        :precondition (and (not (zero nabove_A)) (not (hold_A)) (not (hold-other_A)) (stack-index nabove_A d1))
        :effect (and (oneof (zero nabove_A) (not (zero nabove_A))) (hold-other_A) (not (counter d1 b0)) (not (counter d1 b1)) (not (counter d1 b2)) (not (counter d1 b3)) (not (counter d1 b4)) (not (counter d1 b5)) (not (counter d2 b0)) (not (counter d2 b1)) (not (counter d2 b2)) (not (counter d2 b3)) (not (counter d2 b4)) (not (counter d2 b5)) (not (counter d3 b0)) (not (counter d3 b1)) (not (counter d3 b2)) (not (counter d3 b3)) (not (counter d3 b4)) (not (counter d3 b5)))
    )
    (:action Pick-above-x_f0_d2
        :precondition (and (not (zero nabove_A)) (not (hold_A)) (not (hold-other_A)) (stack-index nabove_A d2))
        :effect (and (oneof (zero nabove_A) (not (zero nabove_A))) (hold-other_A) (not (counter d2 b0)) (not (counter d2 b1)) (not (counter d2 b2)) (not (counter d2 b3)) (not (counter d2 b4)) (not (counter d2 b5)) (not (counter d3 b0)) (not (counter d3 b1)) (not (counter d3 b2)) (not (counter d3 b3)) (not (counter d3 b4)) (not (counter d3 b5)))
    )
    (:action Pick-above-x_f0_d3
        :precondition (and (not (zero nabove_A)) (not (hold_A)) (not (hold-other_A)) (stack-index nabove_A d3))
        :effect (and (oneof (zero nabove_A) (not (zero nabove_A))) (hold-other_A) (not (counter d3 b0)) (not (counter d3 b1)) (not (counter d3 b2)) (not (counter d3 b3)) (not (counter d3 b4)) (not (counter d3 b5)))
    )
    (:action Pick-other_f0_d1
        :precondition (and (not (zero nother_A)) (not (hold_A)) (not (hold-other_A)) (stack-index nother_A d1))
        :effect (and (oneof (zero nother_A) (not (zero nother_A))) (hold-other_A) (not (counter d1 b0)) (not (counter d1 b1)) (not (counter d1 b2)) (not (counter d1 b3)) (not (counter d1 b4)) (not (counter d1 b5)) (not (counter d2 b0)) (not (counter d2 b1)) (not (counter d2 b2)) (not (counter d2 b3)) (not (counter d2 b4)) (not (counter d2 b5)) (not (counter d3 b0)) (not (counter d3 b1)) (not (counter d3 b2)) (not (counter d3 b3)) (not (counter d3 b4)) (not (counter d3 b5)))
    )
    (:action Pick-other_f0_d2
        :precondition (and (not (zero nother_A)) (not (hold_A)) (not (hold-other_A)) (stack-index nother_A d2))
        :effect (and (oneof (zero nother_A) (not (zero nother_A))) (hold-other_A) (not (counter d2 b0)) (not (counter d2 b1)) (not (counter d2 b2)) (not (counter d2 b3)) (not (counter d2 b4)) (not (counter d2 b5)) (not (counter d3 b0)) (not (counter d3 b1)) (not (counter d3 b2)) (not (counter d3 b3)) (not (counter d3 b4)) (not (counter d3 b5)))
    )
    (:action Pick-other_f0_d3
        :precondition (and (not (zero nother_A)) (not (hold_A)) (not (hold-other_A)) (stack-index nother_A d3))
        :effect (and (oneof (zero nother_A) (not (zero nother_A))) (hold-other_A) (not (counter d3 b0)) (not (counter d3 b1)) (not (counter d3 b2)) (not (counter d3 b3)) (not (counter d3 b4)) (not (counter d3 b5)))
    )
    (:action Put-x-on-table
        :precondition (and (hold_A))
        :effect (and (not (hold_A)))
    )
    (:action Put-x-above-some_f0_d1
        :precondition (and (not (zero nother_A)) (hold_A) (stack-index nother_A d1))
        :effect (and (oneof (zero nother_A) (not (zero nother_A))) (not (hold_A)) (some-below_A) (not (counter d1 b0)) (not (counter d1 b1)) (not (counter d1 b2)) (not (counter d1 b3)) (not (counter d1 b4)) (not (counter d1 b5)) (not (counter d2 b0)) (not (counter d2 b1)) (not (counter d2 b2)) (not (counter d2 b3)) (not (counter d2 b4)) (not (counter d2 b5)) (not (counter d3 b0)) (not (counter d3 b1)) (not (counter d3 b2)) (not (counter d3 b3)) (not (counter d3 b4)) (not (counter d3 b5)))
    )
    (:action Put-x-above-some_f0_d2
        :precondition (and (not (zero nother_A)) (hold_A) (stack-index nother_A d2))
        :effect (and (oneof (zero nother_A) (not (zero nother_A))) (not (hold_A)) (some-below_A) (not (counter d2 b0)) (not (counter d2 b1)) (not (counter d2 b2)) (not (counter d2 b3)) (not (counter d2 b4)) (not (counter d2 b5)) (not (counter d3 b0)) (not (counter d3 b1)) (not (counter d3 b2)) (not (counter d3 b3)) (not (counter d3 b4)) (not (counter d3 b5)))
    )
    (:action Put-x-above-some_f0_d3
        :precondition (and (not (zero nother_A)) (hold_A) (stack-index nother_A d3))
        :effect (and (oneof (zero nother_A) (not (zero nother_A))) (not (hold_A)) (some-below_A) (not (counter d3 b0)) (not (counter d3 b1)) (not (counter d3 b2)) (not (counter d3 b3)) (not (counter d3 b4)) (not (counter d3 b5)))
    )
    (:action Put-aside
        :precondition (and (hold-other_A) (not (stack-in nother_A)))
        :effect (and (not (zero nother_A)) (not (hold-other_A)))
    )
    (:action Put-above-x
        :precondition (and (hold-other_A) (not (stack-in nabove_A)))
        :effect (and (not (zero nabove_A)) (not (hold-other_A)))
    )
)

