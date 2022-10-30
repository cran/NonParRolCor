\name{NonParRolCor-package}
\alias{NonParRolCor-package}
\alias{NonParRolCor}
\docType{package}
\title{Non-parametric statistical significance test for rolling window correlation 
}
\description{
'NonParRolCor' estimates and plots as a single plot and as a heat map 
the rolling window correlation coefficients and their statistical 
significance between two regular (sampled on identical time points) 
time series. The statistical significance is computed through a 
non-parametric computing-intensive method (Telford 2013, Polanco-Martínez 
and López-Martínez 2021). This method (test) address the effects due 
to the multiple testing problem (inflation of the Type I error) when 
the statistical significance is estimated for rolling correlation 
coefficients. The method is based on Monte Carlo simulations by permuting 
one (e.g., the dependent) of the variables under analysis and keeping 
fixed the other (e.g., the independent) variable. We improve the 
computational efficiency of this method to reduce the computation time  
through parallel computing. It has been designed especially for 
environmental (climate and ecological) data although this can be applied 
to other kinds of data sets as well. 'NonParRolCor' contains four 
functions: (1) 'rolcor_estim_1win' and (2) 'rolcor_estim_heatmap' to 
estimate the rolling window correlation coefficients and their respective 
statistical significance for only one window-length and for all possible 
window-lengths; (3) 'plot_rolcor_estim_heatmap' and (4) 
'plot_rolcor_estim_heatmap' to plot the time series under analysis 
and the correlation coefficients that are statistically significant for 
only one window-length as a simple plot and for all possible window-lengths 
as a heat map, respectively. The functions contained in 'NonParRolCor' 
are highly flexible since these contains several parameters to control 
the estimation of correlation and the features of the plots of the time 
series, e.g., to remove potential linear trend contained in the time series 
under analysis or to personalise the plot of the time series under analysis. 
The 'NonParRolCor' package also provides examples with synthetic 
('syntheticdata' data set) and real-life environmental ('ecodata' data 
sets) time series to exemplify its use. 
}
\details{
\tabular{ll}{
Package: \tab NonParRolCor\cr
Type: \tab Package\cr
Version: \tab 0.8\cr
Date: \tab 2020-10-30\cr
License: \tab GPL (>= 2) \cr
LazyLoad: \tab yes\cr
}
NonParRolCor package contains four functions: (1) \code{\link{rolcor_estim_1win}} and (2) \cr \code{\link{rolcor_estim_heatmap}} that estimate the rolling window correlation coefficients and their respective statistical significance for only one window-length and for all possible window-lengths, respectively; (3) \code{\link{plot_rolcor_estim_1win}} and (4) \code{\link{plot_rolcor_estim_heatmap}} that plots the time series under scrutiny and that create a simple plot and a heat map of the rolling window correlation coefficients that are statistically significant, respectively. NonParRolCor also contains three data sets: (1) \code{\link{syntheticdata}}, (2) \code{\link{ecodata}} and (3) \code{\link{ecodata2}} to exemplify the use of the aforementioned functions. The significance test is based on and inspired from Telford (2013) and Polanco-Martínez (2019) whereas the simple plots and heat maps are based on Polanco-Martínez (2020). The non-parametric statistical significance test is described in detail in Polanco-Martínez and López-Martínez (2021).}
\note{
 Dependencies: \emph{stat}, \emph{gtools}, \emph{pracma}, \emph{colorspace}, \emph{scales}, \emph{foreach}, \emph{parallel}, \emph{doParallel}. 
}
\author{
Josué M. Polanco-Martínez (a.k.a. jomopo).\cr
Excellence Unit GECOS, IME, Universidad de Salamanca, Salamanca, SPAIN.\cr
BC3 - Basque Centre for Climate Change, Leioa, SPAIN.\cr 
Web1: \url{https://scholar.google.es/citations?user=8djLIhcAAAAJ&hl=en/}.\cr
Web2: \url{https://www.researchgate.net/profile/Josue-Polanco-Martinez/}.\cr
Email: \email{josue.m.polanco@gmail.com} \cr
José L. López-Martínez.\cr 
Faculty of Mathematics, Universidad Autónoma de Yucatán (UADY), Tizimín, MEXICO.\cr 
Web1: \url{https://scholar.google.es/citations?user=552PKVEAAAAJ&hl=es/}.\cr
Web2: \url{https://www.researchgate.net/profile/Jose-Lopez-Martinez-3/}.\cr
Email: \email{jose.lopez@correo.uady.mx}. \cr\cr 
Acknowledgement:\cr 
The first author acknowledges to the SEPE (Spanish Public Service of Employment) and to the Excellence Unit GECOS (reference number CLU-2019-03), Universidad de Salamanca for its funding support. Special thanks to The Donegal Irish Pub (Portugalete) to provide space for research and code.}  
\references{
Polanco-Martínez, J. M. and López-Martínez, J.M. (2021). A non-parametric method to test the statistical significance in rolling window correlations, and applications to ecological time series. Ecological Informatics 60, 101379. <URL: \doi{10.1016/j.ecoinf.2021.101379}>. \cr 

Polanco-Martínez, J. M. (2020). RolWinMulCor: an R package for estimating rolling window multiple correlation in ecological time series. Ecological Informatics, 60, 101163. <URL: \doi{10.1016/j.ecoinf.2020.101163}>. \cr

Polanco-Martínez, J. M. (2019). Dynamic relationship analysis between NAFTA stock markets using nonlinear, nonparametric, non-stationary methods. Nonlinear Dynamics, 97(1), 369-389. <URL: \doi{10.1007/s11071-019-04974-y}>. \cr 

Telford, R.: Running correlations -- running into problems. (2013). <URL: \cr 
\url{https://quantpalaeo.wordpress.com/2013/01/04/}>. \cr
}
