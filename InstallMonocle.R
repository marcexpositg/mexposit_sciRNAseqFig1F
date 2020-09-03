# install monocle3 on a fresh R 4.0.2 install
# you should also install Rtools
# Installation instructions adapted from https://github.com/cole-trapnell-lab/monocle3/issues/390

install.packages("devtools", repos="https://cloud.r-project.org/")
install.packages("Rcpp", repos="https://cloud.r-project.org/")
install.packages("grr", repos="https://cloud.r-project.org/")
install.packages("https://cran.r-project.org/src/contrib/Archive/Matrix.utils/Matrix.utils_0.9.7.tar.gz",
                 repos = NULL, type="source")
install.packages(c("RCurl", "matrixStats", "futile.logger", "snow", "ggbeeswarm", "viridis", "RcppAnnoy",
                   "RcppHNSW", "irlba", "rsvd", "igraph"), repos="https://cloud.r-project.org/")
install.packages(c("dplyr", "ggrepel", "lmtest", "pbapply", "pbmcapply", "pheatmap", "plotly", "plyr",
                   "proxy", "pscl", "RANN", "reshape2", "rsample", "RhpcBLASctl", "Rtsne", "slam",
                   "spdep", "speedglm", "uwot", "tidyr"), repos="https://cloud.r-project.org/")
install.packages("BiocManager", repos="https://cloud.r-project.org/")
BiocManager::install('DelayedArray', update = FALSE, ask = FALSE)
BiocManager::install(c("BiocNeighbors", "BiocSingular", "scater"), update = FALSE, ask = FALSE)
BiocManager::install(c('BiocGenerics', 'DelayedMatrixStats', 'limma', 'S4Vectors', 'SingleCellExperiment',
                       'SummarizedExperiment', 'batchelor'), update = FALSE, ask = FALSE)
devtools::install_github('cole-trapnell-lab/leidenbase')
devtools::install_github('cole-trapnell-lab/monocle3')