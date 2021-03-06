% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/my_code.R
\name{uTAR.sim}
\alias{uTAR.sim}
\title{Generate Univariate SETAR Models}
\usage{
uTAR.sim(nob, arorder, phi, d = 1, thr = c(0, 0), sigma = c(1, 1, 1),
  cnst = rep(0, 3), ini = 500)
}
\arguments{
\item{nob}{number of observations.}

\item{arorder}{AR-order for each regime. The length of arorder controls the number of regimes.}

\item{phi}{a 3-by-p matrix. Each row contains the AR coefficients for a regime.}

\item{d}{delay for threshold variable.}

\item{thr}{threshold values.}

\item{sigma}{standard error for each regime.}

\item{cnst}{constant terms.}

\item{ini}{burn-in period.}
}
\value{
uTAR.sim returns a list with components:
\item{series}{a time series following SETAR model.}
\item{at}{innovation of the time seres.}
\item{arorder}{AR-order for each regime.}
\item{thr}{threshold value.}
\item{phi}{a 3-by-p matrix. Each row contains the AR coefficients for a regime.}
\item{cnst}{constant terms}
\item{sigma}{standard error for each regime.}
}
\description{
Generate univariate SETAR model for up to 3 regimes.
}
\examples{
arorder=rep(1,2)
ar.coef=matrix(c(0.7,-0.8),2,1)
y=uTAR.sim(100,arorder,ar.coef,1,0)
}
