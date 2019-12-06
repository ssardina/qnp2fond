(define (domain FOND_full_full_6_6)
    (:requirements :non-deterministic)
    (:types variable depth bit)
    (:constants nballs_0 nballs_1 - variable d0 d1 d2 d3 d4 d5 d6 - depth b0 b1 b2 b3 b4 b5 - bit)
    (:predicates
        (zero ?X - variable)
        (stack-depth ?d - depth)
        (stack-index ?X - variable ?d - depth)
        (stack-in ?X - variable)
        (counter ?d - depth ?b - bit)
        (holding_0)
        (holding_1)
        (room_0)
        (stack-in nballs_0)
        (stack-in nballs_1)
        (stack-depth d0)
        (stack-depth d1)
        (stack-depth d2)
        (stack-depth d3)
        (stack-depth d4)
        (stack-depth d5)
        (stack-depth d6)
        (stack-index nballs_0 d1)
        (stack-index nballs_0 d2)
        (stack-index nballs_0 d3)
        (stack-index nballs_0 d4)
        (stack-index nballs_0 d5)
        (stack-index nballs_0 d6)
        (stack-index nballs_1 d1)
        (stack-index nballs_1 d2)
        (stack-index nballs_1 d3)
        (stack-index nballs_1 d4)
        (stack-index nballs_1 d5)
        (stack-index nballs_1 d6)
        (counter d0 b0)
        (counter d0 b1)
        (counter d0 b2)
        (counter d0 b3)
        (counter d0 b4)
        (counter d0 b5)
        (counter d1 b0)
        (counter d1 b1)
        (counter d1 b2)
        (counter d1 b3)
        (counter d1 b4)
        (counter d1 b5)
        (counter d2 b0)
        (counter d2 b1)
        (counter d2 b2)
        (counter d2 b3)
        (counter d2 b4)
        (counter d2 b5)
        (counter d3 b0)
        (counter d3 b1)
        (counter d3 b2)
        (counter d3 b3)
        (counter d3 b4)
        (counter d3 b5)
        (counter d4 b0)
        (counter d4 b1)
        (counter d4 b2)
        (counter d4 b3)
        (counter d4 b4)
        (counter d4 b5)
        (counter d5 b0)
        (counter d5 b1)
        (counter d5 b2)
        (counter d5 b3)
        (counter d5 b4)
        (counter d5 b5)
        (counter d6 b0)
        (counter d6 b1)
        (counter d6 b2)
        (counter d6 b3)
        (counter d6 b4)
        (counter d6 b5)
        (top-counter b0)
        (top-counter b1)
        (top-counter b2)
        (top-counter b3)
        (top-counter b4)
        (top-counter b5)
    )

    (:action PUSH_at_d0_b0
        :parameters (?X - variable)
        :precondition (and (stack-depth d0) (not (counter d0 b0)))
        :effect (and (not (stack-depth d0)) (stack-depth d1) (stack-in ?X) (stack-index ?X d1) (counter d0 b0))
    )
    (:action PUSH_at_d0_b1
        :parameters (?X - variable)
        :precondition (and (stack-depth d0) (not (counter d0 b1)) (counter d0 b0))
        :effect (and (not (stack-depth d0)) (stack-depth d1) (stack-in ?X) (stack-index ?X d1) (counter d0 b1) (not (counter d0 b0)))
    )
    (:action PUSH_at_d0_b2
        :parameters (?X - variable)
        :precondition (and (stack-depth d0) (not (counter d0 b2)) (counter d0 b1) (counter d0 b0))
        :effect (and (not (stack-depth d0)) (stack-depth d1) (stack-in ?X) (stack-index ?X d1) (counter d0 b2) (not (counter d0 b1)) (not (counter d0 b0)))
    )
    (:action PUSH_at_d0_b3
        :parameters (?X - variable)
        :precondition (and (stack-depth d0) (not (counter d0 b3)) (counter d0 b2) (counter d0 b1) (counter d0 b0))
        :effect (and (not (stack-depth d0)) (stack-depth d1) (stack-in ?X) (stack-index ?X d1) (counter d0 b3) (not (counter d0 b2)) (not (counter d0 b1)) (not (counter d0 b0)))
    )
    (:action PUSH_at_d0_b4
        :parameters (?X - variable)
        :precondition (and (stack-depth d0) (not (counter d0 b4)) (counter d0 b3) (counter d0 b2) (counter d0 b1) (counter d0 b0))
        :effect (and (not (stack-depth d0)) (stack-depth d1) (stack-in ?X) (stack-index ?X d1) (counter d0 b4) (not (counter d0 b3)) (not (counter d0 b2)) (not (counter d0 b1)) (not (counter d0 b0)))
    )
    (:action PUSH_at_d0_b5
        :parameters (?X - variable)
        :precondition (and (stack-depth d0) (not (counter d0 b5)) (counter d0 b4) (counter d0 b3) (counter d0 b2) (counter d0 b1) (counter d0 b0))
        :effect (and (not (stack-depth d0)) (stack-depth d1) (stack-in ?X) (stack-index ?X d1) (counter d0 b5) (not (counter d0 b4)) (not (counter d0 b3)) (not (counter d0 b2)) (not (counter d0 b1)) (not (counter d0 b0)))
    )
    (:action PUSH_at_d1_b0
        :parameters (?X - variable)
        :precondition (and (stack-depth d1) (not (stack-in ?X)) (not (counter d1 b0)))
        :effect (and (not (stack-depth d1)) (stack-depth d2) (stack-in ?X) (stack-index ?X d2) (counter d1 b0))
    )
    (:action PUSH_at_d1_b1
        :parameters (?X - variable)
        :precondition (and (stack-depth d1) (not (stack-in ?X)) (not (counter d1 b1)) (counter d1 b0))
        :effect (and (not (stack-depth d1)) (stack-depth d2) (stack-in ?X) (stack-index ?X d2) (counter d1 b1) (not (counter d1 b0)))
    )
    (:action PUSH_at_d1_b2
        :parameters (?X - variable)
        :precondition (and (stack-depth d1) (not (stack-in ?X)) (not (counter d1 b2)) (counter d1 b1) (counter d1 b0))
        :effect (and (not (stack-depth d1)) (stack-depth d2) (stack-in ?X) (stack-index ?X d2) (counter d1 b2) (not (counter d1 b1)) (not (counter d1 b0)))
    )
    (:action PUSH_at_d1_b3
        :parameters (?X - variable)
        :precondition (and (stack-depth d1) (not (stack-in ?X)) (not (counter d1 b3)) (counter d1 b2) (counter d1 b1) (counter d1 b0))
        :effect (and (not (stack-depth d1)) (stack-depth d2) (stack-in ?X) (stack-index ?X d2) (counter d1 b3) (not (counter d1 b2)) (not (counter d1 b1)) (not (counter d1 b0)))
    )
    (:action PUSH_at_d1_b4
        :parameters (?X - variable)
        :precondition (and (stack-depth d1) (not (stack-in ?X)) (not (counter d1 b4)) (counter d1 b3) (counter d1 b2) (counter d1 b1) (counter d1 b0))
        :effect (and (not (stack-depth d1)) (stack-depth d2) (stack-in ?X) (stack-index ?X d2) (counter d1 b4) (not (counter d1 b3)) (not (counter d1 b2)) (not (counter d1 b1)) (not (counter d1 b0)))
    )
    (:action PUSH_at_d1_b5
        :parameters (?X - variable)
        :precondition (and (stack-depth d1) (not (stack-in ?X)) (not (counter d1 b5)) (counter d1 b4) (counter d1 b3) (counter d1 b2) (counter d1 b1) (counter d1 b0))
        :effect (and (not (stack-depth d1)) (stack-depth d2) (stack-in ?X) (stack-index ?X d2) (counter d1 b5) (not (counter d1 b4)) (not (counter d1 b3)) (not (counter d1 b2)) (not (counter d1 b1)) (not (counter d1 b0)))
    )
    (:action PUSH_at_d2_b0
        :parameters (?X - variable)
        :precondition (and (stack-depth d2) (not (stack-in ?X)) (not (counter d2 b0)))
        :effect (and (not (stack-depth d2)) (stack-depth d3) (stack-in ?X) (stack-index ?X d3) (counter d2 b0))
    )
    (:action PUSH_at_d2_b1
        :parameters (?X - variable)
        :precondition (and (stack-depth d2) (not (stack-in ?X)) (not (counter d2 b1)) (counter d2 b0))
        :effect (and (not (stack-depth d2)) (stack-depth d3) (stack-in ?X) (stack-index ?X d3) (counter d2 b1) (not (counter d2 b0)))
    )
    (:action PUSH_at_d2_b2
        :parameters (?X - variable)
        :precondition (and (stack-depth d2) (not (stack-in ?X)) (not (counter d2 b2)) (counter d2 b1) (counter d2 b0))
        :effect (and (not (stack-depth d2)) (stack-depth d3) (stack-in ?X) (stack-index ?X d3) (counter d2 b2) (not (counter d2 b1)) (not (counter d2 b0)))
    )
    (:action PUSH_at_d2_b3
        :parameters (?X - variable)
        :precondition (and (stack-depth d2) (not (stack-in ?X)) (not (counter d2 b3)) (counter d2 b2) (counter d2 b1) (counter d2 b0))
        :effect (and (not (stack-depth d2)) (stack-depth d3) (stack-in ?X) (stack-index ?X d3) (counter d2 b3) (not (counter d2 b2)) (not (counter d2 b1)) (not (counter d2 b0)))
    )
    (:action PUSH_at_d2_b4
        :parameters (?X - variable)
        :precondition (and (stack-depth d2) (not (stack-in ?X)) (not (counter d2 b4)) (counter d2 b3) (counter d2 b2) (counter d2 b1) (counter d2 b0))
        :effect (and (not (stack-depth d2)) (stack-depth d3) (stack-in ?X) (stack-index ?X d3) (counter d2 b4) (not (counter d2 b3)) (not (counter d2 b2)) (not (counter d2 b1)) (not (counter d2 b0)))
    )
    (:action PUSH_at_d2_b5
        :parameters (?X - variable)
        :precondition (and (stack-depth d2) (not (stack-in ?X)) (not (counter d2 b5)) (counter d2 b4) (counter d2 b3) (counter d2 b2) (counter d2 b1) (counter d2 b0))
        :effect (and (not (stack-depth d2)) (stack-depth d3) (stack-in ?X) (stack-index ?X d3) (counter d2 b5) (not (counter d2 b4)) (not (counter d2 b3)) (not (counter d2 b2)) (not (counter d2 b1)) (not (counter d2 b0)))
    )
    (:action PUSH_at_d3_b0
        :parameters (?X - variable)
        :precondition (and (stack-depth d3) (not (stack-in ?X)) (not (counter d3 b0)))
        :effect (and (not (stack-depth d3)) (stack-depth d4) (stack-in ?X) (stack-index ?X d4) (counter d3 b0))
    )
    (:action PUSH_at_d3_b1
        :parameters (?X - variable)
        :precondition (and (stack-depth d3) (not (stack-in ?X)) (not (counter d3 b1)) (counter d3 b0))
        :effect (and (not (stack-depth d3)) (stack-depth d4) (stack-in ?X) (stack-index ?X d4) (counter d3 b1) (not (counter d3 b0)))
    )
    (:action PUSH_at_d3_b2
        :parameters (?X - variable)
        :precondition (and (stack-depth d3) (not (stack-in ?X)) (not (counter d3 b2)) (counter d3 b1) (counter d3 b0))
        :effect (and (not (stack-depth d3)) (stack-depth d4) (stack-in ?X) (stack-index ?X d4) (counter d3 b2) (not (counter d3 b1)) (not (counter d3 b0)))
    )
    (:action PUSH_at_d3_b3
        :parameters (?X - variable)
        :precondition (and (stack-depth d3) (not (stack-in ?X)) (not (counter d3 b3)) (counter d3 b2) (counter d3 b1) (counter d3 b0))
        :effect (and (not (stack-depth d3)) (stack-depth d4) (stack-in ?X) (stack-index ?X d4) (counter d3 b3) (not (counter d3 b2)) (not (counter d3 b1)) (not (counter d3 b0)))
    )
    (:action PUSH_at_d3_b4
        :parameters (?X - variable)
        :precondition (and (stack-depth d3) (not (stack-in ?X)) (not (counter d3 b4)) (counter d3 b3) (counter d3 b2) (counter d3 b1) (counter d3 b0))
        :effect (and (not (stack-depth d3)) (stack-depth d4) (stack-in ?X) (stack-index ?X d4) (counter d3 b4) (not (counter d3 b3)) (not (counter d3 b2)) (not (counter d3 b1)) (not (counter d3 b0)))
    )
    (:action PUSH_at_d3_b5
        :parameters (?X - variable)
        :precondition (and (stack-depth d3) (not (stack-in ?X)) (not (counter d3 b5)) (counter d3 b4) (counter d3 b3) (counter d3 b2) (counter d3 b1) (counter d3 b0))
        :effect (and (not (stack-depth d3)) (stack-depth d4) (stack-in ?X) (stack-index ?X d4) (counter d3 b5) (not (counter d3 b4)) (not (counter d3 b3)) (not (counter d3 b2)) (not (counter d3 b1)) (not (counter d3 b0)))
    )
    (:action PUSH_at_d4_b0
        :parameters (?X - variable)
        :precondition (and (stack-depth d4) (not (stack-in ?X)) (not (counter d4 b0)))
        :effect (and (not (stack-depth d4)) (stack-depth d5) (stack-in ?X) (stack-index ?X d5) (counter d4 b0))
    )
    (:action PUSH_at_d4_b1
        :parameters (?X - variable)
        :precondition (and (stack-depth d4) (not (stack-in ?X)) (not (counter d4 b1)) (counter d4 b0))
        :effect (and (not (stack-depth d4)) (stack-depth d5) (stack-in ?X) (stack-index ?X d5) (counter d4 b1) (not (counter d4 b0)))
    )
    (:action PUSH_at_d4_b2
        :parameters (?X - variable)
        :precondition (and (stack-depth d4) (not (stack-in ?X)) (not (counter d4 b2)) (counter d4 b1) (counter d4 b0))
        :effect (and (not (stack-depth d4)) (stack-depth d5) (stack-in ?X) (stack-index ?X d5) (counter d4 b2) (not (counter d4 b1)) (not (counter d4 b0)))
    )
    (:action PUSH_at_d4_b3
        :parameters (?X - variable)
        :precondition (and (stack-depth d4) (not (stack-in ?X)) (not (counter d4 b3)) (counter d4 b2) (counter d4 b1) (counter d4 b0))
        :effect (and (not (stack-depth d4)) (stack-depth d5) (stack-in ?X) (stack-index ?X d5) (counter d4 b3) (not (counter d4 b2)) (not (counter d4 b1)) (not (counter d4 b0)))
    )
    (:action PUSH_at_d4_b4
        :parameters (?X - variable)
        :precondition (and (stack-depth d4) (not (stack-in ?X)) (not (counter d4 b4)) (counter d4 b3) (counter d4 b2) (counter d4 b1) (counter d4 b0))
        :effect (and (not (stack-depth d4)) (stack-depth d5) (stack-in ?X) (stack-index ?X d5) (counter d4 b4) (not (counter d4 b3)) (not (counter d4 b2)) (not (counter d4 b1)) (not (counter d4 b0)))
    )
    (:action PUSH_at_d4_b5
        :parameters (?X - variable)
        :precondition (and (stack-depth d4) (not (stack-in ?X)) (not (counter d4 b5)) (counter d4 b4) (counter d4 b3) (counter d4 b2) (counter d4 b1) (counter d4 b0))
        :effect (and (not (stack-depth d4)) (stack-depth d5) (stack-in ?X) (stack-index ?X d5) (counter d4 b5) (not (counter d4 b4)) (not (counter d4 b3)) (not (counter d4 b2)) (not (counter d4 b1)) (not (counter d4 b0)))
    )
    (:action PUSH_at_d5_b0
        :parameters (?X - variable)
        :precondition (and (stack-depth d5) (not (stack-in ?X)) (not (counter d5 b0)))
        :effect (and (not (stack-depth d5)) (stack-depth d6) (stack-in ?X) (stack-index ?X d6) (counter d5 b0))
    )
    (:action PUSH_at_d5_b1
        :parameters (?X - variable)
        :precondition (and (stack-depth d5) (not (stack-in ?X)) (not (counter d5 b1)) (counter d5 b0))
        :effect (and (not (stack-depth d5)) (stack-depth d6) (stack-in ?X) (stack-index ?X d6) (counter d5 b1) (not (counter d5 b0)))
    )
    (:action PUSH_at_d5_b2
        :parameters (?X - variable)
        :precondition (and (stack-depth d5) (not (stack-in ?X)) (not (counter d5 b2)) (counter d5 b1) (counter d5 b0))
        :effect (and (not (stack-depth d5)) (stack-depth d6) (stack-in ?X) (stack-index ?X d6) (counter d5 b2) (not (counter d5 b1)) (not (counter d5 b0)))
    )
    (:action PUSH_at_d5_b3
        :parameters (?X - variable)
        :precondition (and (stack-depth d5) (not (stack-in ?X)) (not (counter d5 b3)) (counter d5 b2) (counter d5 b1) (counter d5 b0))
        :effect (and (not (stack-depth d5)) (stack-depth d6) (stack-in ?X) (stack-index ?X d6) (counter d5 b3) (not (counter d5 b2)) (not (counter d5 b1)) (not (counter d5 b0)))
    )
    (:action PUSH_at_d5_b4
        :parameters (?X - variable)
        :precondition (and (stack-depth d5) (not (stack-in ?X)) (not (counter d5 b4)) (counter d5 b3) (counter d5 b2) (counter d5 b1) (counter d5 b0))
        :effect (and (not (stack-depth d5)) (stack-depth d6) (stack-in ?X) (stack-index ?X d6) (counter d5 b4) (not (counter d5 b3)) (not (counter d5 b2)) (not (counter d5 b1)) (not (counter d5 b0)))
    )
    (:action PUSH_at_d5_b5
        :parameters (?X - variable)
        :precondition (and (stack-depth d5) (not (stack-in ?X)) (not (counter d5 b5)) (counter d5 b4) (counter d5 b3) (counter d5 b2) (counter d5 b1) (counter d5 b0))
        :effect (and (not (stack-depth d5)) (stack-depth d6) (stack-in ?X) (stack-index ?X d6) (counter d5 b5) (not (counter d5 b4)) (not (counter d5 b3)) (not (counter d5 b2)) (not (counter d5 b1)) (not (counter d5 b0)))
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
    (:action POP_at_d4
        :parameters (?X - variable)
        :precondition (and (stack-depth d4) (stack-index ?X d4) (stack-in ?X))
        :effect (and (not (stack-depth d4)) (not (stack-index ?X d4)) (not (stack-in ?X)) (stack-depth d3))
    )
    (:action POP_at_d5
        :parameters (?X - variable)
        :precondition (and (stack-depth d5) (stack-index ?X d5) (stack-in ?X))
        :effect (and (not (stack-depth d5)) (not (stack-index ?X d5)) (not (stack-in ?X)) (stack-depth d4))
    )
    (:action POP_at_d6
        :parameters (?X - variable)
        :precondition (and (stack-depth d6) (stack-index ?X d6) (stack-in ?X))
        :effect (and (not (stack-depth d6)) (not (stack-index ?X d6)) (not (stack-in ?X)) (stack-depth d5))
    )
    (:action MOVE_b0
        :precondition (and (stack-depth d0) (not (top-counter b0)))
        :effect (and (top-counter b0))
    )
    (:action MOVE_b1
        :precondition (and (stack-depth d0) (not (top-counter b1)) (top-counter b0))
        :effect (and (top-counter b1) (not (top-counter b0)))
    )
    (:action MOVE_b2
        :precondition (and (stack-depth d0) (not (top-counter b2)) (top-counter b1) (top-counter b0))
        :effect (and (top-counter b2) (not (top-counter b1)) (not (top-counter b0)))
    )
    (:action MOVE_b3
        :precondition (and (stack-depth d0) (not (top-counter b3)) (top-counter b2) (top-counter b1) (top-counter b0))
        :effect (and (top-counter b3) (not (top-counter b2)) (not (top-counter b1)) (not (top-counter b0)))
    )
    (:action MOVE_b4
        :precondition (and (stack-depth d0) (not (top-counter b4)) (top-counter b3) (top-counter b2) (top-counter b1) (top-counter b0))
        :effect (and (top-counter b4) (not (top-counter b3)) (not (top-counter b2)) (not (top-counter b1)) (not (top-counter b0)))
    )
    (:action MOVE_b5
        :precondition (and (stack-depth d0) (not (top-counter b5)) (top-counter b4) (top-counter b3) (top-counter b2) (top-counter b1) (top-counter b0))
        :effect (and (top-counter b5) (not (top-counter b4)) (not (top-counter b3)) (not (top-counter b2)) (not (top-counter b1)) (not (top-counter b0)))
    )
    (:action decoded-8
        :precondition (and (not (room_0)))
        :effect (and (room_0))
    )
    (:action decoded-9
        :precondition (and (room_0))
        :effect (and (not (room_0)))
    )
    (:action decoded-4
        :precondition (and (holding_0) (not (room_0)) (not (stack-in nballs_1)))
        :effect (and (not (zero nballs_1)) (not (holding_0)) (not (room_0)))
    )
    (:action decoded-1
        :precondition (and (holding_0) (room_0) (not (stack-in nballs_0)))
        :effect (and (not (zero nballs_0)) (not (holding_0)))
    )
    (:action decoded-3_f0_d6
        :precondition (and (not (zero nballs_0)) (not (holding_0)) (room_0) (stack-index nballs_0 d6))
        :effect (and (oneof (zero nballs_0) (not (zero nballs_0))) (holding_0) (not (counter d6 b0)) (not (counter d6 b1)) (not (counter d6 b2)) (not (counter d6 b3)) (not (counter d6 b4)) (not (counter d6 b5)))
    )
    (:action decoded-5_f0_d6
        :precondition (and (not (zero nballs_1)) (not (holding_0)) (not (room_0)) (stack-index nballs_1 d6))
        :effect (and (oneof (zero nballs_1) (not (zero nballs_1))) (holding_0) (not (room_0)) (not (counter d6 b0)) (not (counter d6 b1)) (not (counter d6 b2)) (not (counter d6 b3)) (not (counter d6 b4)) (not (counter d6 b5)))
    )
    (:action decoded-7
        :precondition (and (holding_1) (not (room_0)) (not (stack-in nballs_1)))
        :effect (and (not (zero nballs_1)) (not (holding_1)) (not (room_0)))
    )
    (:action decoded-0
        :precondition (and (holding_1) (room_0) (not (stack-in nballs_0)))
        :effect (and (not (zero nballs_0)) (not (holding_1)))
    )
    (:action decoded-2_f0_d6
        :precondition (and (not (zero nballs_0)) (not (holding_1)) (room_0) (stack-index nballs_0 d6))
        :effect (and (oneof (zero nballs_0) (not (zero nballs_0))) (holding_1) (not (counter d6 b0)) (not (counter d6 b1)) (not (counter d6 b2)) (not (counter d6 b3)) (not (counter d6 b4)) (not (counter d6 b5)))
    )
    (:action decoded-6_f0_d6
        :precondition (and (not (zero nballs_1)) (not (holding_1)) (not (room_0)) (stack-index nballs_1 d6))
        :effect (and (oneof (zero nballs_1) (not (zero nballs_1))) (holding_1) (not (room_0)) (not (counter d6 b0)) (not (counter d6 b1)) (not (counter d6 b2)) (not (counter d6 b3)) (not (counter d6 b4)) (not (counter d6 b5)))
    )
)
