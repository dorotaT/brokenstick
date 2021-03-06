% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_basis.R
\name{make_basis}
\alias{make_basis}
\title{Create linear splines basis}
\usage{
make_basis(x, knots = NULL, boundary = range(x), degree = 1,
  warn = TRUE)
}
\arguments{
\item{x}{a vector of ages at which the basis function are needed}

\item{knots}{a vector of internal knots, excluding boundary knots}

\item{boundary}{vector of external knots}

\item{degree}{the degree of the spline. The broken stick model
requires linear splines, so the default is \code{degree = 1}.}

\item{warn}{a logical indicating whether warnings from \code{splines::bs()}
should be given.}
}
\value{
A matrix with \code{length(x)} rows and \code{length(breaks)}
columns, with some extra attributes described by \code{bs()}.
}
\description{
This function creates the basis function of a linear first-order splines
at a user-specific set of break points. The default knots
code the age range 0-3 years.
}
\note{
Before version 0.54, it was standard practice that the \code{knots}
array always included \code{boundary[1]}.
}
\author{
Stef van Buuren, 2017
}
