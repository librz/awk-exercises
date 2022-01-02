### remove empty lines

suppose the input is as follows

```sh
line 1

line 3

line 5
```

desired output

```sh
line 1
line 3
line 5
```

solution

```sh
echo -e "line 1\n\nline 3\n\nline 5" | awk '$0 {print}'
```

### get a list of all local git branches in one line (seperate each branch with a space)

support `git branch` gives the following output

```sh
  bug-fix-2021-11-09
  bug-fix-2021-11-22
  bug-fix-2021-11-23
  bug-fix-2021-11-24
  bug-fix-2021-11-26
  bug-fix-2021-12-01
  bug-fix-2021-12-04
  master
* test
```

solution

```sh
git branch | 
# 1. remove the * sign of current branch & remove whitespaces for each line
awk '{ 
if ($1 ~ /[^\*]/) 
  print $1;
else
  print $2;
}' |
# 2. set ORS(output record seperator to space instead of newline)
awk -v ORS=' ' '{print}'
```

*this could be useful if you want delete a lot of local git branches in one go using `git branch -D`*

