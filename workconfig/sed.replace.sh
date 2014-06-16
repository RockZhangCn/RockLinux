#!/bin/bash
#find ./ -name "*.cpp" -o -name "*.h" | xargs sed -i s/printf/logprintf/g
find ./  | xargs sed -i s/com\.android\.browser/com\.zte\.browser/g
