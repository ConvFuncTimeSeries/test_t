% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/my_code.R
\name{F_test_cfar}
\alias{F_test_cfar}
\title{F Test for a CFAR Process}
\usage{
F_test_cfar(f, p.max = 6, df_b = 10, grid = 1000)
}
\arguments{
\item{f}{the functional time series.}

\item{p.max}{maximum CFAR order. Default is 6.}

\item{df_b}{the degrees of freedom for natural cubic splines. Default is 10.}

\item{grid}{the number of gird points used to constrct the functional time series and noise process. Default is 1000.}
}
\value{
The function outputs F test statistics and their p-values.
}
\description{
F test for a CFAR process to specify CFAR order.
}
\examples{
phi_func= function(x)   
{
 	return(dnorm(x,mean=0,sd=0.1))
}
y=g_cfar1(1000,5,phi_func)
f_grid=y$cfar
index=seq(1,1001,by=10)
f=f_grid[,index]
F_test_cfar(f)
}
\references{
Liu, X., Xiao, H., and Chen, R. (2016) Convolutional autoregressive models for functional time series. \emph{Journal of Econometrics}, 194, 263-282.
}
