#!/bin/bash

for file in example_file*; do
# ^ Initiates a "for" loop. It scans the working directory for any items 
# matching the wildcard pattern "example_file*". 
# During each cycle of the loop, the variable "file" is assigned the name of the next matching item.

    if [[ "${file}" == "example_file1" ]]; then
    # ^ Begins a conditional "if" statement. It checks whether the text currently 
    # stored in the "file" variable is an exact match for "example_file1".

        echo "Skipping the first file"
        # ^ If the condition evaluates to true, this command outputs a notification 
        # to the terminal indicating that this specific file is being bypassed.

        continue
        # ^ The "continue" statement acts as a shortcut: it halts the execution of the current cycle. 
        # It forces the loop to immediately jump back up and fetch the next item, skipping the 
        # execution of any remaining commands below it for this specific iteration.

    fi
    # ^ Terminates the "if" conditional block.

    echo "${RANDOM}" > "${file}"
    # ^ ${RANDOM} is an internal Bash feature that returns a pseudo-random integer (0-32767). 
    # The ">" redirection symbol writes this random number directly into the active file. 
    # If the file already contained data, it is completely overwritten by this new number. 
    # (Note: "example_file1" escapes this step because the "continue" statement bypassed it).

done
# ^ Signifies the end of the "for" loop block. The script will move past this line 
# only after every file matching the initial pattern has been fully processed.