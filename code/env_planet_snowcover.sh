#!/bin/bash

cat << EOF > requirements.txt
SQLAlchemy @ file:///opt/concourse/worker/volumes/live/bfe20d71-b806-4187-4783-cd5d96eb1af2/volume/sqlalchemy_1647599831148/work
sqlparse==0.4.2
srsly==2.4.3
statsmodels @ file:///opt/concourse/worker/volumes/live/237cf070-cf87-4ff8-6149-8213b5eb40a5/volume/statsmodels_1614023802257/work
sympy @ file:///opt/concourse/worker/volumes/live/2af8c70b-e999-41ad-6ca8-39318707cbda/volume/sympy_1647854069899/work
tables @ file:///opt/concourse/worker/volumes/live/daa73f70-754b-4f28-73ce-6f96c40f4b9d/volume/pytables_1607975400838/work
tabulate==0.8.9
tangled-up-in-unicode==0.2.0
TBB==0.2
tblib @ file:///Users/ktietz/demo/mc3/conda-bld/tblib_1629402031467/work
tenacity==8.0.1
tensorboard==2.7.0
tensorboard-data-server==0.6.1
tensorboard-plugin-wit==1.8.1
tensorflow==2.7.0
tensorflow-estimator==2.7.0
tensorflow-io-gcs-filesystem==0.23.1
termcolor==1.1.0
EOF

# if this environment is not there
# create this new env required by snowcover mapping workflow
conda env create planet-snowcover
pip install -r requirements.txt


