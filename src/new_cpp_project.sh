#!/bin/bash
mkdir $1;
cd $1;

mkdir bin src env inc doc run log;
touch README.md

touch env/activate;
chmod +x env/activate;
printf "#!/bin/bash\n export CPLUS_INCLUDE_PATH=$PWD/inc" >> env/activate; \

touch src/main.cpp;
printf "\n\n\nint main() {\n\n}\n" >> src/main.cpp;

touch .gitignore;
printf "\n# vim\n*.sw*\nbin/*" >> .gitignore;

git init;
git add .;
git commit -m "Initial Commit."


