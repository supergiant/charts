# charts

 ## How to update this chart repo.

 1. Make changes. or create a chart `helm create mychart`
 2. Package the edited or new chart. `helm package mychart`
 3. Move the generated package file to the docs/ folder. `mv mychart-0.1.0.tgz docs`
 4. Generate an updated index file for the repo. `helm repo index docs --url https://supergiant.github.io/tscharts`
 5. add, commit, push.


## To add this repo to your helm client.

`helm repo add supergiant https://supergiant.github.io/charts`
