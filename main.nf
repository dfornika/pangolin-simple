#!/usr/bin/env nextflow

nextflow.enable.dsl=2

include { pangolin } from './modules/pangolin.nf'

workflow {

  ch_input = Channel.fromPath(params.input)

  pangolin(ch_input)
}