\name{plot_rolcor_estim_1win}
\alias{plot_rolcor_estim_1win}
\alias{plot_rolcor_estim_1win}
\title{Plot the variables under analysis and the rolling correlation coefficients that are statistically significant for only one window-length 
}
\description{The \code{\link{plot_rolcor_estim_1win}} function plots the time series under study and create a simple plot of the rolling window correlation coefficients that are statistically significant that are obtained by the \code{\link{rolcor_estim_1win}} function. 
}
\usage{
plot_rolcor_estim_1win(inputdata, corcoefs, CRITVAL, widthwin, left_win,
                  righ_win, varX="X", varY="Y", coltsX="black", coltsY="blue", 
                  rmltrd=TRUE, Scale=TRUE, HeigWin1=2.05, HeigWin2=2.75, 
                  colCOEF="black", CEXLAB=1.15, CEXAXIS=1.05, LWDtsX=1, 
                  LWDtsY=1, LWDcoef=1, colCRITVAL="black", pchCRIVAL=16) 
}
\arguments{
 \item{inputdata}{ 
The same data matrix (time, first and second variable) that was used with the \code{\link{rolcor_estim_1win}} function. 
}
 \item{corcoefs}{
Rolling correlation coefficients estimated with the \code{\link{rolcor_estim_1win}} function. 
}
 \item{CRITVAL}{ 
The critical values computed through the function \code{\link{rolcor_estim_1win}}, which are used to determine the statistical significance.
}
 \item{widthwin}{ 
\code{widthwin} contains the window-length (time-scale) that come from the function \code{\link{rolcor_estim_1win}}.
}
 \item{left_win, righ_win}{ 
These parameters are used to accommodate (to the left and right) the times of the rolling window correlation coefficients and these are provided by the \code{\link{rolcor_estim_1win}} function.
}
 \item{varX, varY}{ 
Names of the first (e.g., X) and the second (e.g., Y) variables contained in \code{inputdata}. Please note that the names of these two variables should be provided (by default are X and Y) when these variables are plotted. 
}
 \item{coltsX, coltsY}{ 
Colors to be used when the variables are plotted, by default are ``black'' for the first variable and ``blue'' for the second, but other colors can be used.
}
 \item{rmltrd}{
Remove (by default is ``TRUE''; ``FALSE'' otherwise) the linear trend in the variables under analysis. It is advisable to remove the trend before estimating the rolling window correlation coefficients, especially, for large window-lengths. 
}
 \item{Scale}{
Scale (by default is ``TRUE''; ``FALSE''  otherwise) is used to ``normalize'' or ``standardize'' the variables under analysis. It is highly advisable to ''normalize/standardize'' the time series under study to have them in the same scales. 
}
 \item{HeigWin1, HeigWin2}{
Proportion of window's size to plot the time series under analysis (\code{HeigWin1}) and the rolling window correlation coefficients (\code{HeigWin2}) (look at: \R>?layout to get more information about ``layout''). By default \code{HeigWin1} and \code{HeigWin2} have values of 2.05 and 2.75, but other values can be used. 
}
 \item{colCOEF}{
The color to be used when the correlation coefficients are plotted, by default the color is ``black'', but other colors can be used.
}
 \item{CEXLAB, CEXAXIS}{
These parameters are used to plot the sizes of the X-axis and Y-axis labels and X- and Y-axis, by default these parameters have values of 1.15 and 1.05, respectively, but it is possible to use other values. 
}
 \item{LWDtsX, LWDtsY}{
Line-widths for the first and the second variable when these are plotted, by default these have values of 1, but other values (widths) can be used.
}
 \item{LWDcoef}{
The line-width to be used when the correlation coefficients are plotted, by default this parameter has a value of 1, but it is possible to use other values.
}
 \item{colCRITVAL}{
\code{colCRITVAL} defines the color used to plot the correlation coefficients that are statistically significant.
}
 \item{pchCRIVAL}{
\code{pchCRITVAL} is used for the type (symbols) of the plot for the correlation coefficients that are statistically significant.
}
}
\details{
The \code{\link{plot_rolcor_estim_1win}} function plots the variables (time series) under analysis and for the selected window-length, the rolling correlation coefficients that are statistically significant, which are estimated through a non-parametric computing-intensive method. The \code{\link{plot_rolcor_estim_1win}} function uses the outputs of \code{\link{rolcor_estim_1win}}. To implement this method we extend the works of Telford (2013), Polanco-Martínez (2019) and Polanco-Martínez (2020), and to implement the simple plot we follow to Polanco-Martínez (2020). The test/method to determine the statistical significance is described in Polanco-Martínez and López-Martínez (2021). 
}
\value{
Outputs:
A plot of the time series under analysis, and for the selected window-length, the rolling window correlation coefficients that are statistically significant. This multi-plot can be saved in your preferred format. 
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

Polanco-Martínez, J. M. (2020). NonParRolCor: an R package for estimating rolling window multiple correlation in ecological time series. Ecological Informatics, 60, 101163. <URL: \doi{10.1016/j.ecoinf.2020.101163}>. 
}
\examples{
 # Code to test the function "plot_rolcol_estim_1win"
 # Defining NonParRolCor parameters 
 MCSim <- 2 
 Np    <- 2
 X_Y <- rolcor_estim_1win(as.matrix(syntheticdata[1:350,]), 
                   CorMethod="pearson", widthwin=21, Align="center", 
                   rmltrd=TRUE, Scale=TRUE, MCSim=MCSim, Np=Np, prob=0.95)
 plot_rolcor_estim_1win(syntheticdata[1:350,], 
                   corcoefs=X_Y$Correlation_coefficients, 
                   CRITVAL=X_Y$CRITVAL, widthwin=X_Y$widthwin, 
                   left_win=X_Y$left_win, righ_win=X_Y$righ_win)
 }

\keyword{plot_time_series}
\keyword{plot_1win_rolling_correlation_Non-parametric_test}

