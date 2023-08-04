# pipeline_importer

Docker config for pipeline_importer container

To build the container, run:
  docker build -t tacc/netsage-pipeline-importer .


This container requires an RPM generated from the 2.0.0 branch of this repo:
   https://github.com/netsage-project/netsage-pipeline.git

To generate that RPM run:
perl Makefile.PL
make rpm

And then copy to the rpm to this directory.

