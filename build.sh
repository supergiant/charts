#!/bin/bash

for package in $(ls -d */ | grep -v docs | sed 's/\///g');
do
  echo "Building Helm Chart: ${package}"
  helm package $package
done

echo "Moving packages to the docs webserver folder..."
mv *.tgz docs

echo "Re-Indexing Helm Repo..."
helm repo index docs --url https://supergiant.github.io/charts

echo "Done!"
