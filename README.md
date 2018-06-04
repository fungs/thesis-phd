# PhD Thesis by Johannes Dröge

This thesis is written entirely in Markdown using a Pandoc build system. This repository contains the source text and vector graphics which where used to compile the thesis.

The published thesis is available on the GitHub release page, via the [Library Publication Server](http://nbn-resolving.de/urn/resolver.pl?urn=urn:nbn:de:hbz:061-20171122-114012-5) and on Zenodo accessible via [DOI:10.5281/zenodo.1263099](https://doi.org/10.5281/zenodo.1263099).

[![DOI:10.5281/zenodo.1263099](https://zenodo.org/badge/DOI/10.5281/zenodo.1263099.svg)](https://doi.org/10.5281/zenodo.1263099)

Text and graphics of the main thesis are released under Creative Commons CC-BY-SA 4.0 but article reproductions in the appendix are subject to the rights of the corresponding publishers (most are open-access).

## Abstract

### English

Microbial communities can be found in almost every place, from biogas reactors over deep sea vents, the surface of plant leaves and roots, to the human body, which hosts a plethora of foreign cells in its digestion system. These communities may consist of thousands upon thousands of microorganisms, including bacteria, archaea, algae and fungi, which coexist within their habitats but which cannot simply be cultivated and studied due to their complex mutual dependencies and environmental requirements. Metagenomics is a field dedicated to the genetic analysis of such communities. The genes of their members enable their survival, for instance by making nutrients accessible, by neutralizing toxic compounds or by allowing symbiosis with other organisms. Through the use of nucleotide sequencing technologies, this genetic diversity can be explored and rendered usable, for instance in the form of new antibiotics or as enzymes in biotechnology. Apart from its considerable economic potential, metagenomic approaches lead to a fundamentally improved understanding of the microbial processes on earth.

With current technology, it is not directly possible to sequence contiguous genomes from microbial communities. Instead, short sequences, called reads, are produced, which need to be assembled into genes and longer genome sequences using computer programs. Depending on the size and complexity of the metagenome, this task can be very difficult. This thesis describes two methods for assigning metagenomic sequences to taxonomic groups or genomes. The results can be used to analyze the genes, and the corresponding proteins and functions, within their phylogenetic and genetic context to gain better insight into the functioning of individual organisms and the microbial community. | Our first method, taxator-tk, assigns nucleotide sequences from metagenomes to corresponding taxa and approaches two challenges: the precise prediction of taxa and the application to datasets, which are constantly growing due to the rapid progress in DNA sequencing. Since annotation methods such as taxator-tk, which require similarity to known genomes, spend a considerable part of their runtime for sequence comparison, our algorithm exploits the underlying phylogenetic structure for similar gene sequences to efficiently calculate the taxonomic assignment. The same phylogenetic principles are used to achieve a high assignment precision.

The second method in this thesis helps researchers to reconstruct individual genomes. It is a statistical classification model for metagenome data, for which we outline several direct and follow-up applications. These include classification of nucleotide sequences to individual genomes, de-novo calculation of genome clusters in metagenomes, in-silico sample enrichment for genomes and quality checking of reconstructed genomes. We published the method as a software library named MGLEX for integration into other programs to enable the efficient use of the data for reconstructing genomes in different scenarios.

Presumably, metagenomics will continue to play an important role in microbial research, and may partially obviate the sequencing of cloned strain genomes. This trend is supported by the rapid development of DNA sequencing technologies, which is progressing towards faster sequencing and longer reads. The presented methods supplement the existing set of bioinformatics tools for acquiring knowledge from metagenomes. By reducing metagenomes to individual genomes, one can apply traditional algorithms from genomics, for instance to reconstruct metabolic pathways, and one can link data from transcriptomic and proteomic experiments. Therefore, there is much interest in genome reconstruction methods, like the ones presented in this thesis.

### Deutsch

Mikrobielle Gemeinschaften existieren praktisch überall, in Biogas-Anlagen, heißen Quellen am Meeresgrund, auf der Oberfläche von Pflanzenblättern und -wurzeln und auch im menschlichen Körper, welcher z. B. im Verdauungstrakt an genetisch fremden Zellen ein Vielfaches seiner selbst beherbergt. Sie können aus Abertausenden von Mikroorganismen, wie Bakterien, Archäen, Algen und Pilzen, bestehen, die innerhalb ihrer Umgebung koexistieren und auf Grund ihrer komplexen wechselseitigen Abhängigkeiten und speziellen Umgebungsanforderungen nicht ohne Weiteres isoliert, kultiviert und untersucht werden können. Das Feld der Metagenomik widmet sich der genetischen Analyse dieser Gemeinschaften. Die Gene ihrer Mitglieder sichern ihnen das Überleben, indem sie unter anderem Nahrung verwertbar machen, Gifte neutralisieren oder Symbiosen mit anderen Organismen ermöglichen. Durch die Technik der Gensequenzierung kann man diesen genetischen Reichtum untersuchen und für Anwendungen nutzbar machen, z. B. in Form von neuen Antibiotika oder als Enzyme in der Biotechnologie. Abgesehen von dem großen ökonomischen Potential ermöglicht die Metagenomik ein fundamental besseres Verständnis der mikrobiologischen Prozesse auf unserer Erde.

Auf direktem Weg können nach heutigem technischen Stand noch keine zusammenhängenden Genome der mikrobiellen Gemeinschaften sequenziert werden. Vielmehr ergeben sich viele kurze DNA-Abschnitte, sogenannte Reads, die durch Computerprogramme zu Gen- und längeren Genom-Sequenzen zusammengesetzt werden müssen, was sich je nach Größe und Komplexität des Metagenoms als sehr schwierig erweisen kann. Diese Doktorarbeit beschreibt zwei Methoden, die das Ziel verfolgen, metagenomische Sequenzen bestimmten taxonomischen Gruppen oder Genomen zuzuordnen. Dadurch können die Gene bzw. ihre zugehörigen Proteine und Funktionen im phylogenetischen und genetischen Kontextes analysieren werden, um so ein besseres Verständnis der Funktionsweise der Organismen und der mikrobiellen Gemeinschaft zu erlangen. | Das erste Methode, taxator-tk, weist Nukleotidsequenzen aus Metagenomen bestimmten Taxa zu und begegnet dabei zwei Herausforderungen: zum einen der präzisen Vorhersage und zum anderen der Anwendbarkeit auf Datensätzen, deren Größe mit dem rapiden Fortschritt der DNA-Sequenzierung stetig ansteigt. Annotationsmethoden wie taxator-tk, die auf Ähnlichkeit zu bereits bekannten Genomen setzen, benötigen einen beträchtlichen Teil ihrer Laufzeit für die Berechnung der Sequenzähnlichkeiten. Daher nutzt unser Algorithmus die zugrunde liegende phylogenetische Struktur ähnlicher Gensequenzen zur effizienten Berechnung einer taxonomischen Vorhersage. Durch die Anwendung der gleichen phylogenetischen Prinzipien erreicht er eine hohe Präzision der Vorhersagen.

Die zweite in dieser Arbeit vorgestellte Methode unterstützt Forscher bei der Rekonstruktion einzelner Genome. Es handelt sich um ein statistisches Klassifikationsmodell für Metagenomdaten, für das zahlreiche direkte und weitergehende Anwendungsmöglichkeiten skizziert werden. Diese umfassen die Klassifizierung von Nukleotidsequenzen nach Genomen, die de-novo-Berechnung von Genom-Clustern, die in-silico Anreicherung von Genomsequenzdaten und die Qualitätskontrolle rekonstruierter Genome. Die Methode wurde als Software-Bibliothek namens MGLEX zur Verwendung in anderen Programmen veröffentlicht und ermöglicht dadurch eine effiziente Datenverwertung bei der Rekonstruktion von Genomen in unterschiedlichen Situationen.

Es ist zu erwarten, dass die Metagenomik eine wichtige Rolle in der mikrobiologischen Forschung spielen und zunehmend in Konkurrenz zur Genomsequenzierung geklonter Stämme treten wird. Diese Prognose wird auch durch die rasante Entwicklung der DNA-Sequenziertechniken getragen, die eine immer schnellere Sequenzierung immer längerer Reads ermöglichen. Die hier vorgestellten Methoden ergänzen das Repertoire vorhandener Bioinformatik-Werkzeuge zur Gewinnung von Erkenntnissen aus Metagenomen. Die Reduzierung von Metagenomen auf einzelne Genome ermöglicht sowohl die Anwendung klassischer Algorithmen der Genomik, z. B. zur Rekonstruktion von Stoffwechselpfaden, als auch die Verknüpfung mit experimentellen Daten der Transkriptomik und Proteomik. Daher sind Verfahren zur Rekonstruktion einzelner Genome, wie sie in dieser Arbeit vorgestellt werden, von großem generellem Interesse.

## Build requirements

The following programs where used

* pandoc (v1.19.2.1)
* xelatex (v3.14159265-2.6-0.99992)

Written in Pandoc markdown with the following extensions

* pandoc-crossref (v0.2.6.0): for numbering figures etc.
* pandoc-citeproc (v0.10.5.1): for citations
* pandoc-shortcaption (v1.2): for figure captions

## Manual post-processing

Table captions in short are not supported in Markdown. Therefore, the thesis was compiled into LaTex and the table listing shortened manually before generating the PDF file using xelatex. Finally, the PDF file was converted to PDF/A (1b) to meet long-term archiving requirements.

## Specifications

* figures are scaled 12 cm width in SVG and PDF in most cases

