# Synopsis

## Metagenomics

Metagenomics is a more recent variant of genomics which, using nucleotide sequencing, pursues medical or ecological questions at the scale of microbial communities. While microbial genomics focuses on single strains, which are traditionally grown in lab cultures before genome sequencing, the metagenomic approach derives by sampling from a natural ecosystem without cultivation. Microbes are said to form a community in their micro-environment because they interact, for instance by symbiosis (e.g. sharing metabolites) or competition (e.g. for food). Such communities form complex interaction networks [@BerryDeciphering2014; @FuhrmanMarine2015], which to understand is the principal interest in microbial ecology. These interactions are also a reason why many species cannot be isolated and grown on culture medium or why the specific culturing conditions are difficult to reproduce [@RiesenfeldMetagenomics2004; @StewartGrowing2012] to obtain their genome sequence by standard means. Extracting and sequencing environmental DNA directly after sampling, however, captures the genomes of all community members, although in a highly fractional and usually incomplete form. One could say that current metagenomics trades species-level genome resolution and completeness for a higher level view on the genes of the community. The metagenome, a term which was coined by [@RiesenfeldMetagenomics2004], stands for the entire genomic content of a microbial community. Among others, it contains genes for all proteins that can be expressed by the community and thus defines its full functioning. Metagenome sequencing is therefore an important approach to discover new functions with potential use in medicine and biotechnology, and to understand the microbial interaction within diverse ecosystems. Due to the wide range of applications, it has been used to study many different environments [@fig:metagenomes_environments].

![Microbial environments extracted from 10043 publication titles (2011-2017) positioned by cooccurance in publication titles. The articles were selected by topic "metagenomics" and the corresponding metadata downloaded from [Europe PMC](https://europepmc.org). The titles were then reduced to enviroment-related words and these were grouped by the number of cooccurances using [Gephi](https://gephi.org) with a force-directed layout and subsequent annotation. There seem to be three major clusters relating to aquatic environments, soil and plant biomass degradation and (human) host-related environments.](figure/metagenome_title_clusters.pdf "Microbial environments extracted from 8211 publication titles"){#fig:metagenomes_environments}

Early studies have impressively demonstrated the potential of the new metagenomic approach. For instance, new antibiotics and antibiotic resistance genes were identified [@GillespieIsolation2002; @RiesenfeldUncultured2004] and an ocean survey [@VenterEnvironmental2004] revealed hundreds of new rhodopsin-like genes in seawater environments (rhodopsin is an essential protein to sense light) among over 1.2 million novel genes using a straight-forward computational analysis. Sequence analysis usually involved an alignment of reads, or assembled contigs, against known gene sequences to determine homologs. For the construction of operational taxonomic units (OTUs) and to study microbial diversity, either the 16S rRNA subunit gene was clustered or subjected to phylogenetic tree construction methods, which represent a general way to study the genetic diversity within gene families. By phylogenetic analysis, metagenome sequences were annotated taxonomically and the existing taxonomy was extended to include the environmental strains. Over the following years, many micro-environments were explored to provide a census of genes and species, many of them previously unknown. Even for well-known niches like the various sites in and on the human body, the resulting data provided new insight into the interactions between the human host and its so-called microbiome, for instance abnormal microbial colonization of the gut was observed with chronic inflammation [@QinHuman2010]. Apart from bacteria, which represent the best known domain in the microbial tree of life, the new approach allowed to also screen the genes of archaea, microscopic eukaryotes, viruses and genetic elements like plasmids [@HugenholtzMicrobiology2008; @GarrettMetagenomic2010; @CuvelierTargeted2010] which helped to broaden the view on the global genetic repertoire of life and its evolution.

### Nucleotide sequencing

Past and present progress in the field of metagenomics is tightly coupled to the development of next-generation sequencing technologies (NGS). The pioneers of metagenomic methods started in the era of Sanger sequencing, when it was slow and expensive when applied to large communities [@WommackMetagenomics2008]. Since then, the underlying sequencing chemistry has been improved and highly parallel reaction and detection techniques have been engineered so that the overall time and cost of nucleotide sequencing has dropped considerably [@DrogeTaxonomic2012, @sec:short_bib]. The first sequencing approaches in metagenomics were limited to well studied single genes, predominantly the bacterial and archaeal gene for the 16S subunit of the ribosome. Genes, or parts thereof, were selectively amplified in a polymerase chain reaction (PCR) before sequencing and are therefore refered to as amplicons. Using this selective approach reduced the amount of target DNA from millions of bases per genome to a few hundreds while yielding estimates of genetic species diversity. Amplicon sequencing is still in use and represents a cost-effective way to study the community structure (the number of species and their evolutionary links). However, since no other genes apart from the selected markers are considered, no direct conclusions on the functional potential can be made unless full genomes of very similar strains are available. Therefore, for targeting novel community genomes, universal sequencing primers are used to initiate sequencing at random starting positions on the DNA strands. The approach is often called shotgun sequencing due to the fact that the reads are more or less randomly scattered over the entire genome sequence. Metagenomic shotgun sequencing can cover any gene in any community genome and continues to evolve together with next-generation sequencing platforms, but also with respect to experimental protocols and data analysis methods. A major limitation is the length of the primary sequencing products (reads). Depending on the sequencing protocol and technology, current reads are still much shorter than typical genes [@DrogeTaxonomic2012] so that overlapping reads are typically assembled to form longer contiguous sequences (contigs).

Metagenomic studies have highlighted the deficiencies of the traditional sequencing approach using isolated and cultured strains. The genomes of environmental microorganisms were found to be much more genetically diverse than those of corresponding lab strains [@TysonCommunity2004; @HandelsmanMetagenomics2004], which essentially represent clones of a single cell. Researchers also realized that their genetic data collections were strongly biased towards taxa which are easily grown in lab cultures and which are of medical relevance, leaving many black spots in the microbial tree of life [@TysonCommunity2004; @WuPhylogenydriven2009]. The exploratory nature of metagenomics obviates the need to narrow the focus on certain species and to hypothesize about the role of these organisms in their environment beforehand, so that it is easier to associate new functions and new species. The bird's eye view on the genes helps to identify mutual dependencies, such as pathways that are shared between  different genomes. Apart from all the benefits, direct sequencing also creates new problems. Some sequencing platforms introduce a bias related to the nucleotide composition [@DohmSubstantial2008], which may affect the analysis. In general, it is difficult to distinguish sequencing errors from natural genetic variation, which, in some cases, could lead to wrong conclusions such as inflated species diversity estimates [@QuinceAccurate2009; @KuninWrinkles2010]. Another problem with this sequence heterogeneity is that longer genome sequences often fail to assemble due to the natural and artificial nucleotide variations in the reads [@MelstedEfficient2011; @PellScaling2012]. Typical metagenome data therefore consist of many incomplete genes whose origin and functional role needs to be determined.

### The role of computer programs

Today, genomic data are ubiquitous and abundant due to high-throughput nucleotide sequencing. Consequently, the data generation marks the starting point of the knowledge discovery process, making modern metagenomics in large part a data-driven science in which algorithms have replaced lab techniques to sort and analyze genetic material. Metagenome data are large (because they represent many genomes) and require extensive processing to deal with the phylogenetic and genetic diversity in the sample. It is convenient to divide the downstream processing of raw sequencing data into three consecutive steps which are illustrated in [@fig:metagenome_processing_steps]: (a) sequence processing specific to the sequencing platform and often performed by proprietary software; (b) metagenome analysis and reduction to non-redundant draft genome sequences; (c) algorithms to study the individual genomes and how they interact. Step (a) applies not only to metagenomics but to all sciences using nucleotide sequencing and, from a practical perspective, decouples downstream algorithms from the specifics of sequencing technology and its development. The work presented in this thesis contributes to step (b), to prepare the data to be used in downstream algorithms which are tailored to the biological questions in step (c).

![Major steps in metagenome data processing. Typical processing consists of three consecutive levels: (a) read processing (b) contig analysis and binning and (c) the analysis at the genome level.](figure/metagenome_processing_steps.pdf "Major steps in metagenome data processing"){#fig:metagenome_processing_steps}

An important task after nucleotide sequencing is the assembly of overlapping reads into longer contigs. In order to succeed, many reads must be sequenced to cover the corresponding genome positions. It is common in current sequencing protocols that pairs of reads are linked in the experimental library preparation so that their relative orientation and approximate distance (insert size) is known, because this information helps to construct longer contigs. For instance, repetitive regions or homologous genes which are longer than the read length cannot be distinguished if they cause loops in the assembly graph [@GhuryeMetagenomic2016]. When the read coverage drops for intermediate regions, the corresponding genomes also break into multiple shorter contigs. Assembly software for isolate genome assembly has been available for a long time [@SuttonTigr1995; @HuangCap31999] and specialized algorithms have been developed for metagenomes [@GhuryeMetagenomic2016]. The latter must cope with the natural genetic variance of strains compared to clonal DNA and must also take into account that, due to different abundances in the sample, the number of genome copies varies considerably among the species or strains, which results in a large range of read coverages. For complex metagenomes, read assembly is considered an algorithmic challenge, but often reduces data by several fold and produces a fraction of longer contigs which represent full or partial genes. Assembly is therefore a reasonable first step towards recovering the full genome sequence of environmental microbes. In the workflow [@fig:metagenome_processing_steps], the assembly bridges steps (a) and (b) because the input sequencing reads have a length and error profile which is specific to the sequencing platform but the output contigs represent generic sequences with most errors removed.

Most bioinformatic methods for inferring functional models of organisms are applied at the level of long genome sequences. For instance, gene regions are identified, their corresponding protein sequences determined and hypothetical pathways constructed. After read assembly, it is thus common to group contigs to form genome bins which represent hypothetical draft genomes. The binning process is an important step in the reconstruction of genomes and solves a problem which, at first, appears very similar to that of read assembly. However, contig binning is usually independent of the sequencing platform and considers information which assembly programs ignore. Both steps can be iterated in a feedback cycle to improve the quality of the resulting genomes ([@fig:assembly_binning_cycle]), [@AlbertsenGenome2013]. Binning connect step (b) and (c) in [$fig:metagenome_processing_steps] because it reduces the data to individual genomes. In this thesis, I present algorithms related to the binning problem which I, in collaboration with colleagues, developed and published during my doctoral studies.

![Assembly and binning cycle for genome reconstruction in metagenomes. Longer contigs yield better preliminary genome bins and when collecting the reads within a bin, these are more specific to the genome and lead to better assembly.](figure/assembly_binning_cycle.pdf "Assembly and binning cycle"){#fig:assembly_binning_cycle}

### Pushing the frontiers

Nucleotide gene sequences can only tell about potential functions of an organism but there may be much more to discover. For instance, we are interested to see genes which are actively expressed and to understand how the gene expression is regulated within the community. The proteins, for which the genes code, are the acting agents in any organism, so it is most important to determine the functional role of proteins, how they interact, and which metabolites they target and mediate. Corresponding experimental techniques for transcriptome and metabolome analysis are being adapted and applied to microbial communities [@TurnbaughInvitation2008; @AguiarpulidoMetagenomics2016]. Such data representing cellular activity are most informative when they can be linked to the corresponding gene sequences and genomes because their regulation and coupling can be studied. It is therefore of major importance to initially derive reliable genomes (or approximates thereof) from a metagenome. These form the basis to build models which can integrate information from other experiments to measure the current state of a community, for instance studying genome activity, micro-evolution or population dynamics.