# caucus-manager
Caucus manager is software to manage presidential caucuses like the democratic precinct and legislative district caucuses held in Washington state in 2016.

Goals for the first version:

General goals
Simplicity of design and ease of use
Supports disconnected/offline use and easy central reconciliation

Precinct Caucus manager
Allow data entry of voter information
Supports capturing initial and final presidential preference
Automatically calculates number of delegates won by each candidate (requires precinct to enter number of total delegates elected)
Allows marking voters as elected delegates or alternates (alternates include number)

Legislative Caucus Manager
Consolidates delegate and alternate data from precinct caucus manager
Handles sign-in of delegates and alternates (must be fast and able to be distributed accross multiple sign in stations)
Produces preliminary credentials report of total signed in delegates and alternates by candidate and congressional district
Produces a report of signed in alternates that are eligible to replace a missing delegate and tracks the replacement of delegate by an alternate (Multi-step process, first by precinct, then congressional district, then all)
Produces final credentials report of total signed in delegates by candidate and congressional district and breakdown of congressional delegates awarded by district and candidate.
(lower priority) Facilitates in tallying of CD delegate votes 
Allows marking LD delegates as elected CD delegates and alternates
Produces affirmative action report

Congressional Caucus manager
Similar to LD caucus manager?
