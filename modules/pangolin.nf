process pangolin {

  publishDir "${params.outdir}", mode: 'copy', pattern: "lineage_report.csv"
  publishDir "${params.outdir}", mode: 'copy', pattern: "pangolin.*.log.txt"

  input:
  path(input)

  output:
  path("lineage_report.csv"), emit: report
  path("pangolin.*.log.txt"), emit: logs

  script:
  """
  pangolin \
    --threads ${task.cpus} \
    --analysis-mode ${params.analysis_mode} \
    ${input} \
    > pangolin.stdout.log.txt \
    2> pangolin.stderr.log.txt
  """
}
