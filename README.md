# CWML Class Single Cell RNAseq Analysis Tutorial with Seurat

This is a class offered by the Bioinformatics Support Program & Data Services at Yale's Cushing/Whitney Medical Library (CWML). It is designed to help beginner level R & RStudio users get used to analyzing their single-cell RNA-seq data using R scripting, via the popular package Seurat, created by the Satija Lab in NYGC (https://satijalab.org/seurat/vignettes.html).  

During the class, participants carry out guided, hands-on scripting to accomplish specific and crucial tasks to analyze a small, publicly avaialble single-cell RNA-seq dataset. The primary goal is to help participants understand the logical flow of the scripts and the task that is being acheived by the function calls. The overarching goal is to empower participants with the knowledge to start using R independently by utilizing resources, such as package documentations and vignettes. 

# This session is made up of two parts, Intro to R for Seurat, and Applying the Seurat R Package

### Part 1: Intro to R for Seurat (30 minutes)
###### * [View the Intro to R for Seurat content in your web browser](https://sauuyer.github.io/intro-to-r-for-seurat/)
###### * [View the R script file](https://github.com/sauuyer/intro-to-r-for-seurat/blob/master/intro-to-r-for-seurat.R) 
###### * [View the R markdown file](https://github.com/Nur-Taz/CWML-class-Single-cell-RNA-seq-analysis-tutorial-Seurat/blob/master/intro-to-r-for-seurat/rmd-test-file-1.Rmd)

### Part 2: Applying the Seurat R Package (2 hours)
###### * [View the pdf for analysis of 1k murine E18.5 brain cells on Seurat](https://github.com/Nur-Taz/CWML-class-Single-cell-RNA-seq-analysis-tutorial-Seurat/blob/master/Neu_1k_UMAP.pdf)
###### * [View the pdf for analysis of 10k murine E18.5 brain cells on Seurat](https://github.com/Nur-Taz/CWML-class-Single-cell-RNA-seq-analysis-tutorial-Seurat/blob/master/Neu_10k_UMAP.pdf)
###### * [View the Rmd file for the analysis of 1k murine E18.5 brain cells on Seurat](https://github.com/Nur-Taz/CWML-class-Single-cell-RNA-seq-analysis-tutorial-Seurat/blob/master/Neu_1k_UMAP.Rmd)
###### * [Seurat Documentation](https://cran.r-project.org/web/packages/Seurat/Seurat.pdf)

The clustering and annotation of clusters shown here are only to illustrate how to use the Seurat package as a tool to analyze and visualize single-cell RNA-seq datasets. The analyses presented here are not meant to be used/considered as accurate representations of clustering and cluster annotations for any kind of neurological/biological data. The results shown in these analyses are purely for the purpose of exercise and may nor may not have biological relevance.

# Important notes from the original vignette
* The "avg_logFC" value from the ```FindMarkers``` and ```FindAllMarkers``` functions represent natural log or ln(fold change). <br/>  
* ```RunPCA``` performs linear dimensionality reduction. <br/>
* ```RunUMAP/RunTSNE``` performs non-linear dimenionality reduction. <br/>
* ```FindNeighbors``` constructs a KNN graph-based on the euclidean distance in PCA space, and refine the edge weights between any two cells based on the shared overlap in their local neighborhoods (Jaccard similarity. <br/>
* ```FindClusters``` iteratively groups cells together, with the goal of optimizing the standard modularity function. Applies techniques such as the Louvain algorithm (default) or SLM (Smart Local Moving) algorithm.  

# Resources for cluster annotation
###### * [Tabula Muris](https://tabula-muris.ds.czbiohub.org/)
###### * [Single Cell Portal (Beta)](https://singlecell.broadinstitute.org/single_cell)
###### * [NCBI Gene](https://www.ncbi.nlm.nih.gov/gene)


