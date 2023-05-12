echo "Generating Template For $1"

mkdir ./src/$1
mkdir ./test/$1
cp -R ./template/src/* ./src/$1/
cp -R ./template/test/* ./test/$1/

cd ./src/$1
grep -RiIl 'feature_id' | xargs sed -i "s/feature_id/$1/g"
grep -RiIl 'lowercase_title' | xargs sed -i "s/lowercase_title/${2,,}/g"
grep -RiIl 'upercase_title' | xargs sed -i "s/upercase_title/$2/g"

cd ../../test/$1
grep -RiIl 'feature_id' | xargs sed -i "s/feature_id/$1/g"

cd ../../

echo "| $2 | ghcr.io/lee-orr/rusty-dev-containers/$1:0 | $3 |" >> README.md

echo ".github/workflows/test.yaml" | xargs sed -i "s/# NEXT/- $1\n          # NEXT/g"