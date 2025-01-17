)CLEAR

⍝ Define truth tables as 3x3 matrices
ANDTAB←3 3⍴¯1 ¯1 ¯1 0 0 0 1 1 1
ORTAB←3 3⍴¯1 0 1 0 0 1 1 1 1
STATES←¯1 0 1

⍝ Display NOT Gate Truth Table
⎕←'NOT Gate Truth Table:'
⎕←STATES
⎕←(-1 0 1)[STATES+2]
⎕←''

⍝ Display AND Gate Truth Table
⎕←'AND Gate Truth Table:'
⎕←'Input →   ¯1  0  1'
⎕←'¯1     ', ANDTAB[1;]
⎕←' 0     ', ANDTAB[2;]
⎕←' 1     ', ANDTAB[3;]
⎕←''

⍝ Display OR Gate Truth Table
⎕←'OR Gate Truth Table:'
⎕←'Input →   ¯1  0  1'
⎕←'¯1     ', ORTAB[1;]
⎕←' 0     ', ORTAB[2;]
⎕←' 1     ', ORTAB[3;]
⎕←''

⍝ Run Transition Tests
⎕←'Testing Probabilistic State Transitions:'
STATE←0
⎕←'Initial State: ',⍕STATE

⍝ Generate random states using ?3 to select from -1, 0, 1
⎕←'New State: ',⍕STATES[?3]
⎕←'New State: ',⍕STATES[?3]
⎕←'New State: ',⍕STATES[?3]
⎕←'New State: ',⍕STATES[?3]
⎕←'New State: ',⍕STATES[?3]

)OFF