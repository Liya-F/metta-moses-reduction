; a function which implements the Delete-Inconsistent-Handle Transformation
(= (deleteInconsistent $exp)
    (let*
        (
            ($guardSet (getGuardSetExp $exp $exp ()))  
            ($isConsistent (isConsistentExp $guardSet))  
        )
       (if $isConsistent $exp ()) 
)
)

