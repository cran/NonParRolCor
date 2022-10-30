\name{rolcor_estim_heatmap}
\alias{rolcor_estim_heatmap}
\alias{rolcor_estim_heatmap}
\title{Estimates the rolling window correlation coefficients for several window-lengths and their statistical significance 
}
\description{The \code{\link{rolcor_estim_heatmap}} function estimates the rolling window correlation coefficients for all the possible window-lengths (time-scales) or for a band of window-lengths for two time series sampled on identical time points, and their statistical significance via a non-parametric computing-intensive method. To carry out the computational implementation we extend the works of Telford (2013), Polanco-Martínez (2019) and Polanco-Martínez (2020). The test/method to determine the statistical significance is described in Polanco-Martínez and López-Martínez (2021). The \cr \code{\link{rolcor_estim_heatmap}} function is highly flexible since this contains several parameters to control the estimation of the correlation. A list of parameters are described in the following lines. 
}
\usage{
rolcor_estim_heatmap(inputdata, CorMethod="pearson", typewidthwin="FULL", 
                     widthwin_1=3, widthwin_N=dim(inputdata)[1], Align="center", 
                     rmltrd=TRUE, Scale=TRUE, MCSim=1000, prob=0.95, Np=2) 
}
\arguments{
 \item{inputdata}{
A matrix of 3 columns: time (regular/evenly spaced), the first (e.g., the independent) variable, and the second (e.g., the dependent) variable. Please verify if \code{inputdata} is a matrix. 
} 
 \item{CorMethod}{
The method used to estimate the correlations, by default is ``pearson'', but other options (``spearman'' and ``kendall'') are available (please look at: \R>?cor.test).
}
 \item{typewidthwin}{``FULL'' is to estimate the windows from 2, 4, ..., to dim(inputdata)[1]) if \code{Align} is equal to ``left'' or ``right'', or from 3, 5,..., to dim(inputdata)[1]) if Align is ``center.'' The other option is ``PARTIAL'', please you should take into account that \code{widthwin_1} and \code{widthwin_1} MUST be ODD if the \code{Align} option is ``center.'' 
}
 \item{widthwin_1}{
First value for the size (length) of the windows when the option \cr \code{typewidthwin}=``PARTIAL'' is selected, the minimum value is 3 (the default value), but you must define this parameter (please note that \code{widthwin_1} < \code{widthwin_N}). 
}
 \item{widthwin_N}{
Last value for the size (length) of the windows when the option \cr \code{typewidthwin}=``PARTIAL'' is selected, by default is dim(inputdata)[1], but you must define this parameter (please note that \code{widthwin_1} < \code{widthwin_N}).
}
 \item{Align}{
To align the rolling object, NonParRolCor uses three options: ``left'', ``center'', and ``right'' (please look at: \R>?running). However, there are some restrictions, which have been described lines above. We recommend to use the ``center'' option to ensure that variations in the correlations are aligned with the variations in the relationships of the variables under study, rather than being shifted to left or to right (Polanco-Martínez 2019, 2020), but this imply that the window-lengths must be odd. 
}
 \item{rmltrd}{
Remove (by default is ``TRUE''; ``FALSE'' otherwise) the linear trend in the variables under analysis. It is advisable to remove (at least the linear) the trend before estimating the rolling window correlation coefficients, especially, for large window-lengths. 
}
 \item{Scale}{
Scale (by default is ``TRUE''; ``FALSE''  otherwise) is used to ``normalize'' or ``standardize'' the variables under analysis. It is highly advisable to ''normalize/standardize'' the time series under study to have them in the same scales. 
}
 \item{MCSim}{
Number of Monte-Carlo simulations to permute the second variable. It is advisable to use at least 1000 simulations. 
}
 \item{prob}{
Numeric vector of probabilities with values in the interval [0,1], by default prob=0.95 (p=0.05), please look at \R?quantile, Telford (2013), or Polanco-Martínez and López-Martínez (2021) for more information. 
}
 \item{Np}{
Number of CPU cores, by default is 2. Please verify the number of cores of your computer. WARNING: it is not advisable to use the maximum number of cores of your computer.
}
}
\details{
The \code{\link{rolcor_estim_heatmap}} function estimates the rolling window correlation coefficients and their statistical significance between two time series sampled on identical time points for all the possible window-lengths or for a band of window-lengths. This function supersedes to the function \code{estimation_NonParRolCor} of the previous version of \code{NonParRolCor}. The function \cr \code{\link{rolcor_estim_heatmap}} uses the functions \code{cor.test} (package:stats) and \code{running} (package:gtools) to estimate the correlation coefficients and compute the rolling window correlations, and also the functions \code{foreach} (package:foreach) and \code{makeCluster} (package:parallel) to parallelize the estimation of the rolling window correlations. 
}
\value{
Outputs:
A list containing eight elements: \code{the_matrixCOR} and \code{CRITVAL} contain the rolling window correlation coefficients and their respective critical values, \code{nwin} and \code{Rwidthwin} contain the number of window-lengths (time-scales) and the window-lengths, \code{left_win} and \code{righ_win} are used to accommodate the times of the rolling window correlation coefficients, finally \code{MCSim} indicates the number of Monte-Carlo simulations and \code{prob} the significance level. 
}
\author{
Josué M. Polanco-Martínez (a.k.a. jomopo).\cr
Excellence Unit GECOS, IME, Universidad de Salamanca, Salamanca, SPAIN.\cr
BC3 - Basque Centre for Climate Change, Leioa, SPAIN.\cr 
Web1: \url{https://scholar.google.es/citations?user=8djLIhcAAAAJ&hl=en/}.\cr
Web2: \url{https://www.researchgate.net/profile/Josue-Polanco-Martinez/}.\cr
Email: \email{josue.m.polanco@gmail.com}.\cr
José L. López-Martínez.\cr 
Faculty of Mathematics, Universidad Autónoma de Yucatán (UADY), Tizimín, MEXICO.\cr 
Web1: \url{https://scholar.google.es/citations?user=552PKVEAAAAJ&hl=es/}.\cr
Web2: \url{https://www.researchgate.net/profile/Jose-Lopez-Martinez-3/}.\cr
Email: \email{jose.lopez@correo.uady.mx}. \cr 
}
\references{
Polanco-Martínez, J. M. and López-Martínez, J.M. (2021). A non-parametric method to test the statistical significance in rolling window correlations, and applications to ecological time series. Ecological Informatics 60, 101379. <URL: \doi{10.1016/j.ecoinf.2021.101379}>. \cr 

Polanco-Martínez, J. M. (2020). NonParRolCor: an R package for estimating rolling window multiple correlation in ecological time series. Ecological Informatics, 60, 101163. <URL: \doi{10.1016/j.ecoinf.2020.101163}>. \cr

Polanco-Martínez, J. M. (2019). Dynamic relationship analysis between NAFTA stock markets using nonlinear, nonparametric, non-stationary methods. Nonlinear Dynamics, 97(1), 369-389. <URL: \doi{10.1007/s11071-019-04974-y}>. \cr 

Telford, R.: Running correlations -- running into problems. (2013). <URL: \cr 
\url{https://quantpalaeo.wordpress.com/2013/01/04/}>. 
}
\examples{
 # Code to test the function "rolcor_estim_heatmap"
 # Defining the 'NonParRolCor' parameters 
 TYPEWIDTHWIN="PARTIAL"
 # Number of Monte-Carlo simulations (MCSim), please use at least 1000. 
 # WARNING: MCSim=2, it's just to test this example! 
 MCSim <- 2 
 Np    <- 2  # Number of cores 
 X_Y <- rolcor_estim_heatmap(syntheticdata[1:350,], CorMethod="pearson", 
                   typewidthwin=TYPEWIDTHWIN, widthwin_1=29, 
                   widthwin_N=51, Align="center", 
                   rmltrd=TRUE, Scale=TRUE, MCSim=MCSim, Np=Np)
 }

\keyword{estimation_rolling_correlation_heatmap_Non-parametric_test}
\keyword{estim_rolling_correlation_heatmap_Non-parametric_test}
