\newpage

## Summary of results

The methods presented in this thesis extend the available software toolbox for analyzing metagenomes of all flavors. From a methodological perspective, these methods cover several algorithmic fields including sequence alignment, taxonomy, phylogenetics and probabilistic modeling. The articles, which were published in the course of the thesis, consistently follow the track to improve the common understanding of metagenomic data. While the binning review [@DrogeTaxonomic2012], see appendix, gave an extensive introduction to the different metagenome binning and analysis approaches, the first method article [@DrogeTaxatortk2014; @sec:full_taxator-tk] presented the program *taxator-tk*, which enables precise taxonomic annotation of entire metagenomes by fast calculation of phylogenetic neighborhoods. The second method article [@DrogeProbabilistic2016; @sec:full_mglex] proposed a statistical classification framework to recover genomes from shotgun-sequenced metagenomes. Data-centric studies used *taxator-tk* and demonstrated its utility to inform about taxonomic affiliations of genes [@BulgarelliStructure2015] and to reconstruct near-complete genomes for a simple community [@DongReconstructing2017]. Finally, comprehensive comparison of metagenome processing software was conducted as a challenge [@SczyrbaCritical2017] in order to improve on the overall interpretation of metagenome studies.

The taxonomic annotation program *taxator-tk* ([@sec:publication_taxator-tk]) was shown to obtain very high precision on a number of synthetic and real metagenomes by applying phylogenetic principles. It requires similar reference genome sequences to calculate a phylogenetic neighborhood for annotation. In its initial stage, the provided example workflow has the option to use two different search programs, but the local aligner is exchangable in order to adapt to sequence data which stem from different experimental procedures. Within the core algorithm (RPA), which is based on pairwise alignment of partial sequences (segments), *taxator-tk* does neither rely on exact scores from the local aligner nor a complete set of retrieved homologs and there are no related parameters to be set. The RPA was also recently adapted to amino acid sequences in *taxator-tk*, so that direct protein alignment can be used for the similarity search without the need to back-translate similarity matches to the nucleotide level. For example, some alternative local alignment programs for identification of similar sequences have been presented lately, which claim to improve the search time by a large factor, some of which focus on fast protein alignment using a reduced alphabet [@ZhaoRapsearch22011; @HusonPoor2014; @BuchfinkFast2014; @HauswedellLambda2014]. In addition, with *taxator-tk* there is no need to invest large efforts for curating reference data, in contrast to the standard procedures in phylogenetic analyzes using HMMs or gene families. This flexibility allows to use the software in less frequent, non-standard situations, for example to analyze communities with eukaryotic content, like algae or fungi.

The probabilistic model for metagenome binning and its software implementation *MGLEX* are to be used for genome recovery. We showed that the model can make use of many available sequences features to classify contigs to genomes or genomes bins and we exemplified diverse applications of *MGLEX* such as genome enrichment and bin analysis. The model itself is very generic, in fact, there is nothing that prevents it to be applied to non-metagenomic datasets. When we started the development, there already existed several binning programs, but we felt that none of them used the available data optimally to recover individual genomes. We designed *MGLEX* as a subroutine to be integrated in other software, because a probabilistic model can be used in several scenarios, and in order to maximize the benefits resulting from future improvements of the model. It can be anticipated that MGLEX will be integrated into further, more user-friendly applications for genome recovery.

The development process of both programs considered that the algorithms are solving a well-defined problem and that they are scaling with large datasets. As a commitment to open science, we released the program source codes to the public and used simple and defined data formats, whereever possible. The software ought to be flexible enough to keep pace with the future progress both in experimental protocols and sequencing technologies.