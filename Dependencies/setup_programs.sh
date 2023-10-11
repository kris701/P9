echo == Installing Fast-Downward ==
echo 
git clone https://github.com/aibasel/downward fast-downward
cd fast-downward
python3 build.py
cd ..
echo 
echo == Done! ==
echo 

echo == Installing Stackelberg Planner ==
echo 
git clone -n --depth=1 --filter=tree:0 https://gitlab.com/atorralba_planners/stackelberg-planner-sls stackelberg-planner
cd stackelberg-planner
git sparse-checkout set --no-cone src
git checkout
cd src
sed -e s/-Werror//g -i preprocess/Makefile
sed -e s/-Werror//g -i search/Makefile
bash build_all -j
cd ..
cd ..
echo 
echo == Done! ==
echo 

echo == Installing VAL ==
echo 
git clone https://github.com/KCL-Planning/VAL.git VAL
cd VAL
cmake build .
make -j
cd ..
echo 
echo == Done! ==
echo 

echo == Installing CSMs ==
echo 
git clone git@github.com:lchrpa/CSMs.git
cd CSMs
cd src
make -j
cd ..
cd ..
echo 
echo == Done! ==
echo 