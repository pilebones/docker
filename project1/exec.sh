#!/bin/bash

TAG=${1:-"project1_project1_run_1"}

docker exec -i -t $TAG /bin/bash
