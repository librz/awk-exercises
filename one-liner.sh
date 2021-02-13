#!/bin/bash

# predict the output
echo -e "hello there my\t\t\tfriend" | awk '{print}'
echo -e "hello there my\t\t\tfriend" | awk '{print $0}'
echo -e "hello there my\t\t\tfriend" | awk '{print $1, $2, $3, $4}'

# using NF
echo -e "Patrick Lisa Hellen\nJoe Steve\nMike Lily Kate Nate" | awk '{print $NF}'

# using NR
echo -e "blabla\nfirst record\nsecond record" | awk 'NR>1{print}'

# single FS
echo -e "PatrickXLisaXHellen" | awk -F'X' '{print $1, $2, $3}'

# multiple FS using array 
echo -e "PatrcikXLisa\tHellen" | awk -F'[X\t]' '{print $1, $2, $3}'

# multiple FS using regex
echo -e "PatrickXLisa\t  Hellen    Joe" | awk -F'X|[ \t]*' '{print $1, $2, $3, $4}'

# using variable to set RS
echo $PATH | awk -v RS=":" '{print $1}'

# create non-builtin variable 
echo -e "Patrick\nLisa\nLily" | awk -v pattern="^Li" '$1 ~ pattern {print $1}'

# using tolower func to ignore case
echo -e "Patrick\nLisa\nLily" | awk 'tolower($1) ~ /^li/ {print $1}'

