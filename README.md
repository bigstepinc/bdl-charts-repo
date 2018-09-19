# Helm Charts Repository for Bigstep Datalake

### Adding a new chart
Run `helm lint <chart-dir-name>` to check for errors.
If there are no errors, run `helm package <chart-dir-name>`. This will create a `.tgz` file named `<chart-name>-<chart-version>.tgz`.
This file should be copied to this repo.
Lastly, the repo needs to be reindexed. This can be done by running `helm repo index . --url https://bigstepinc.github.io/bdl-charts-repo`.

*Note:* Also adding the chart files to this repo is not recommended, as it might produce versioning problems.
