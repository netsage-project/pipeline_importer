# pipeline_importer

Docker config for NetSage pipeline_importer container

To build the container:
  docker build -t tacc/netsage-pipeline-importer .

To run the container:
  docker run tacc/netsage-pipeline-importer:latest

This container requires an RPM generated from the 2.0.0 branch of this repo:
   https://github.com/netsage-project/netsage-pipeline.git

If you need to update that RPM, run:
   perl Makefile.PL
   make rpm

And then copy to the rpm file to this directory.

