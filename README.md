# Helm Charts Repository for Bigstep Datalake

### Adding a new chart
Create a new directory named after the chart and add the chart files to it.
Run `helm lint <chart-dir-name>` to check for errors.
If there are no errors, run `helm package <chart-dir-name>`. This will create a `.tgz` file named `<chart-name>-<chart-version>.tgz`.
Lastly, the repo needs to be reindexed. This can be done by running 'helm repo index . --url https://bigstepinc.github.io/bdl-charts-repo'.

*Note:* Alternatively, if chart packaging is done somewhere else, the `.tgz` file should be copied to the repo. Reindexing, also, will have to be done.
