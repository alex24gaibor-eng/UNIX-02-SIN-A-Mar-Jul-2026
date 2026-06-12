#!/bin/bash
for file in example_file*; do
# ^ Starts a "for" loop. It looks in the current directory for all files (or folders) 
# whose names begin exactly with "example_file".
# In each iteration of the loop, the variable "file" will take the name of one of those matching files.

    if [[ "${file}" == "example_file1" ]]; then
    # ^ Opens an "if" condition. It evaluates whether the name of the file being processed 
    # in this current turn is exactly identical to the string "example_file1".

        echo "Skipping the first file"
        # ^ If the condition is met (meaning, it IS file 1), it prints a message 
        # to the screen letting you know that it will skip this file.

        continue
        # ^ The "continue" command is key here: it immediately stops the current iteration 
        # and forces the loop to jump back to the top to process the next file in the list. 
        # Anything below this line will be completely ignored for this specific round.

    fi
    # ^ Marks the end of the "if" conditional block.

    echo "${RANDOM}" > "${file}"
    # ^ The special system variable "${RANDOM}" generates a random number (between 0 and 32767). 
    # The ">" operator takes that random number and injects it into the current file, 
    # overwriting anything that was previously inside it. 
    # (The file "example_file1" is spared from this thanks to the "continue" command above).

done
# ^ Closes the "for" loop structure. Once all the files starting with 
# "example_file" have been processed, the script will finish here.