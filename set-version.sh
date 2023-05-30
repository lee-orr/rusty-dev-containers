echo "Setting Version to $1"

grep -RiIl '\"version\": ' | xargs sed -i "s/[0-9]\+[.][0-9]\+[.][0-9]\+/$1/g"
