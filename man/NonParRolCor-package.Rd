\name{NonParRolCor-package}
\alias{NonParRolCor-package}
\alias{NonParRolCor}
\docType{package}
\title{Non-parametric statistical significance test for rolling correlation 
}
\description{
'NonParRolCor' estimates and plots as a heat map the statistical 
significance of rolling window correlation coefficients between two 
regular (sampled on identical time points) time series. The statistical 
significance is computed through a non-parametric computing-intensive 
method. This method (test) addresses the effects due to the multiple 
testing problem (inflation of the Type I error) when the statistical 
significance is estimated for rolling window correlation coefficients. 
The method is based on Monte Carlo simulations by permuting one 
(dependent) of the variables under analysis and keeping fixed the 
other (independent) variable. We improve the computational efficiency 
of this method to reduce the computation time through parallel 
computing. It has been designed especially for ecological data although 
this can be applied to other kinds of data sets as well. 'NonParRolCor' 
contains two functions: (1) 'estimation_NonParRolCor' to perform the 
test and (2) 'heatmap_NonParRolCor' to plot the time series under 
analysis and to create a heat map of the rolling window correlation 
coefficients that are statistically significant. The functions 
contained in 'NonParRolCor' are highly flexible since these contains 
several parameters to control the estimation of correlation and the 
features of the plots of the time series, e.g. to remove potential 
linear trend contained in the time series under analysis or to 
personalise the plot of the time series under analysis. The 
'NonParRolCor' package also provides examples with synthetic 
('syntheticdata' data set) and real-life ecological ('ecodata' data
set) time series to exemplify its use. 
}
\details{
\tabular{ll}{
Package: \tab NonParRolCor\cr
Type: \tab Package\cr
Version: \tab 0.4\cr
Date: \tab 2020-03-29\cr
License: \tab GPL (>= 2) \cr
LazyLoad: \tab yes\cr
}
NonParRolCor package contains two functions: (1) \code{\link{estimation_NonParRolCor}} that estimates the rolling window correlation coefficients and their respective statistical significance through a non-parametric computing-intensive method, and (2) \code{\link{heatmap_NonParRolCor}} that plots the time series under scrutiny and that creates a heat map of the rolling window correlation coefficients that are statistically significant. NonParRolCor also contains two data sets: (1) \code{\link{syntheticdata}} and (2) \code{\link{ecodata}} to exemplify the use of the aforementioned functions. The significance test is based on and inspired from Telford (2013) and Polanco-Martínez (2020) whereas the heat map plot is based on Polanco-Martínez (2020). The implementation is described in detail in Polanco-Martínez and López-Martínez (2021).}
\note{
 Dependencies: \emph{stat}, \emph{gtools}, \emph{pracma}, \emph{colorspace}, \emph{scales}, \emph{foreach}, \emph{parallel}, \emph{doParallel}. 
}
\author{
Josué M. Polanco-Martínez (a.k.a. jomopo).\cr
BC3 - Basque Centre for Climate Change, Bilbao, SPAIN.\cr 
Web1: \url{https://scholar.google.es/citations?user=8djLIhcAAAAJ&hl=en}.\cr
Web2: \url{https://www.researchgate.net/profile/Josue-Polanco-Martinez}.\cr
Email: \email{josue.m.polanco@gmail.com} \cr
José L. López-Martínez.\cr 
Faculty of Mathematics, Universidad Autónoma de Yucatán (UADY), Tizimín, MEXICO.\cr 
Web1: \url{https://scholar.google.es/citations?user=552PKVEAAAAJ&hl=es}.\cr
Web2: \url{https://www.researchgate.net/profile/Jose-Lopez-Martinez-3}.\cr
Email: \email{jose.lopez@correo.uady.mx}. \cr\cr 
Acknowledgement:\cr 
The first author acknowledges to the SEPE (Spanish Public Service of Employment) for its funding support.}  
\references{
Polanco-Martínez, J. M. and López-Martínez, J.M. (2021). A non-parametric method to test the statistical significance in rolling window correlations, and applications to ecological time series. Submitted to Ecological Informatics (2021). \cr 

Polanco-Martínez, J. M. (2020). NonParRolCor: an R package for estimating rolling window multiple correlation in ecological time series. Ecological Informatics, 60, 101163. <URL: \doi{10.1016/j.ecoinf.2020.101163}>. \cr

Polanco-Martínez, J. M. (2019). Dynamic relationship analysis between NAFTA stock markets using nonlinear, nonparametric, non-stationary methods. Nonlinear Dynamics, 97(1), 369-389. <URL: \doi{10.1007/s11071-019-04974-y}>. \cr 

Telford, R.: Running correlations -- running into problems. (2013). <URL: \cr 
\url{https://quantpalaeo.wordpress.com/2013/01/04/}>. \cr
}
