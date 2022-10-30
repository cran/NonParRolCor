\name{plot_rolcor_estim_heatmap}
\alias{plot_rolcor_estim_heatmap}
\alias{plot_rolcor_estim_heatmap}
\title{Plot the variables under analysis and a heat map of the rolling correlation coefficients that are statistically significant
}
\description{The \code{\link{plot_rolcor_estim_heatmap}} function plots the time series under study and create a heat map of the rolling window correlation coefficients that are statistically significant that are obtained by the \code{\link{rolcor_estim_heatmap}} function. 
}
\usage{
plot_rolcor_estim_heatmap(inputdata, corcoefs, CRITVAL, Rwidthwin="", 
                  typewidthwin="", widthwin_1=3, widthwin_N=dim(inputdata)[1], 
                  varX="X", varY="Y", coltsX="black", coltsY="blue", LWDtsX=1, 
                  LWDtsY=1, CEXLAB=1.15, CEXAXIS=1.05)
}
\arguments{
 \item{inputdata}{ 
The same data matrix (time, first and second variable) that was used with the \code{\link{rolcor_estim_heatmap}} function. 
}
 \item{corcoefs}{
Rolling correlation coefficients estimated with the \code{\link{rolcor_estim_heatmap}} function. 
}
 \item{CRITVAL}{ 
The critical values computed through the function \code{\link{rolcor_estim_heatmap}} and that used to determine the statistical significance.
}
 \item{Rwidthwin}{ 
\code{Rwidthwin} is a vector that contain the window lengths, which come from the function \code{\link{rolcor_estim_heatmap}}.
}
 \item{typewidthwin}{ 
Contains the type (``FULL'' or ``PARTIAL'') of heat map that will be plotted, this information is provided by \code{\link{rolcor_estim_heatmap}}. Please note that whether option \code{typewidthwin}=``PARTIAL'' is selected, and you must provide the parameters \code{widthwin_1} and \code{widthwin_N} to plot the heat map. 
}
 \item{widthwin_1}{ 
First value for the size (length) of the windows when the option \cr \code{typewidthwin}=``PARTIAL'' is selected, this value is provided by the function \code{\link{rolcor_estim_heatmap}}.
}
 \item{widthwin_N}{ 
Last value for the size (length) of the windows when the option \cr \code{typewidthwin}=``PARTIAL'' is selected, this value is provided by the function \code{\link{rolcor_estim_heatmap}}.
}
 \item{varX, varY}{ 
Names of the first (e.g., X) and the second (e.g., Y) variables contained in \code{inputdata}. Please note that the names of these two variables should be provided (by default are X and Y) when these variables are plotted. 
}
 \item{coltsX, coltsY}{ 
Colors to be used when the variables are plotted, by default are ``black'' for the first variable and ``blue'' for the second, but other colors can be used.
}
 \item{LWDtsX, LWDtsY}{
Line-widths for the first and the second variable when these are plotted, by default these have values of 1, but other values (widths) can be used.
}
 \item{CEXLAB, CEXAXIS}{
These parameters are used to plot the sizes of the X-axis and Y-axis labels and X- and Y-axis, by default these parameters have values of 1.15 and 1.05, respectively, but it is possible to use other values. 
}
}
\details{
The \code{\link{plot_rolcor_estim_heatmap}} function plots the variables (time series) under analysis and a heat map of the rolling correlation coefficients that are statistically significant. This function supersedes to the function \code{heatmap_NonParRolCor} of the previous version of \code{NonParRolCor}. The \code{\link{plot_rolcor_estim_heatmap}} function uses the outputs of the \code{\link{rolcor_estim_heatmap}} function. To implement this method we extend the works of Telford (2013), Polanco-Martínez (2019) and Polanco-Martínez (2020), and to implement the heat map we follow to Polanco-Martínez (2020). The test/method to determine the statistical significance is described in Polanco-Martínez and López-Martínez (2021). \code{\link{plot_rolcor_estim_heatmap}} uses the functions \code{diverge_hcl} (package:colorspace) and \code{alpha} (package:scales) to create the palette of colors. 
}
\value{
Outputs:
A plot of the time series under analysis and a heat map (a multi-plot via screen) of the rolling correlation coefficients statistically significant. This multi-plot can be saved in your preferred format. 
}
\author{
Josué M. Polanco-Martínez (a.k.a. jomopo).\cr
Excellence Unit GECOS, IME, Universidad de Salamanca, Salamanca, SPAIN.\cr
BC3 - Basque Centre for Climate Change, Leioa, SPAIN.\cr 
Web1: \url{https://scholar.google.es/citations?user=8djLIhcAAAAJ&hl=en/}.\cr
Web2: \url{https://www.researchgate.net/profile/Josue-Polanco-Martinez/}.\cr
Email: \email{josue.m.polanco@gmail.com}.\cr
}
\references{
Polanco-Martínez, J. M. and López-Martínez, J.M. (2021). A non-parametric method to test the statistical significance in rolling window correlations, and applications to ecological time series. Ecological Informatics, 60, 101379. <URL: \doi{10.1016/j.ecoinf.2021.101379}>. \cr 

Polanco-Martínez, J. M. (2020). NonParRolCor: an R package for estimating rolling window multiple correlation in ecological time series. Ecological Informatics, 60, 101163. <URL: \doi{10.1016/j.ecoinf.2020.101163}>. \cr
}
\examples{
 # Code to test the function "plot_rolcor_estim_heatmap"
 # Defining NonParRolCor parameters 
 TYPEWIDTHWIN="PARTIAL"
 # Number of Monte-Carlo simulations (MCSim), please use at least 1000. 
 # WARNING: MCSim=2, it's just to test this example! 
 MCSim <- 2 
 Np    <- 2  # Number of cores 
 X_Y <- rolcor_estim_heatmap(syntheticdata[1:350,], CorMethod="pearson", 
                   typewidthwin=TYPEWIDTHWIN, widthwin_1=29,
                   widthwin_N=51, Align="center", rmltrd=TRUE, 
                   Scale=TRUE, MCSim=MCSim, Np=Np)
 plot_rolcor_estim_heatmap(syntheticdata[1:350,], X_Y$matcor, X_Y$CRITVAL, 
                   Rwidthwin=X_Y$Windows, typewidthwin=TYPEWIDTHWIN, 
                   widthwin_1=29, widthwin_N=51)
 }

\keyword{plot_time_series}
\keyword{plot_heatmap_rolling_correlation_Non-parametric_test}

