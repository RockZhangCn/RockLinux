#!/bin/bash
for file in `find ./ -name "*.c" -o -name "*.cpp" -o -name "*.h"`; do
    indent -npro -nip -nlp -npsl -i4 -ts4 -sob -l200 -ss -bl -bli 0 -l130 $file
done

find ./ -name "*.c~" -o -name "*.h~" -o -name "*.cpp~" | xargs rm
