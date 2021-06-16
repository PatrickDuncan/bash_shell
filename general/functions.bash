#!/bin/bash

get_pod() {
  echo $(kubectl get pod -n $1 -l app=$2 -o jsonpath={.items[$3].metadata.name})
}
