# pangolin-simple

A simple nextflow pipeline for running pangolin.

## Usage

```
nextflow run dfornika/pangolin-simple \
  -profile conda \
  --cache ~/.conda/envs \
  --input <input.fa> \
  --outdir </path/to/output-dir>
```

By default, the pipeline will use pangolin's `accurate` analysis mode (using USHER). The `fast` analysis mode (using PangoLEARN)
can be selected using the `--analysis_mode` flag:

```
nextflow run dfornika/pangolin-simple \
  -profile conda \
  --cache ~/.conda/envs \
  --analysis_mode fast \
  --input <input.fa> \
  --outdir </path/to/output-dir>
```


## Outputs

The pipeline will produce three output files, under the path supplied with the `--outdir` flag:

```
lineage_report.csv
pangolin.stderr.log.txt
pangolin.stdout.log.txt
```
