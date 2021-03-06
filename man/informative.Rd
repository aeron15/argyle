% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/genetics.R
\name{informative}
\alias{informative}
\title{Find markers informative between sample groups}
\usage{
informative(gty, between, ...)
}
\arguments{
\item{gty}{a \code{genotypes} object}

\item{between}{expression for grouping samples (see Details)}

\item{...}{other parameters to be passed to \code{consensus()} (such as \code{nas.allowed})}
}
\value{
a named logical vector, of length equal to the number of rows in \code{gty},
	indicating whether a marker is informative in the given samples
}
\description{
Find markers informative between sample groups
}
\details{
A marker is defined to be "informative" if it is not monomorphic across a group of samples.
	In the context of a genetic cross (eg. an F2 intercross), an informative marker is one with a fixed
	difference between the two parental lines.  This function generalizes that idea to more than two groups:
	a marker is informative if it has a fixed difference between any pair of groups, as defined in the
	\code{between} expression.
	
 The expression \code{between} can be protected for evaluation in the environment of the sample metadata
 in \code{attr(gty, "ped")} (view it with \code{samples(gty)}) by wrapping it in \code{.()}.  To group
 on more than one variable, provide multiple expressions in a list or separate them with commas like
 \code{.(expr1, expr2)}.  (This syntax will be familiar to users of the \code{plyr} package.)
 
 Consensus genotypes are first computed within the groups defined by unique values of \code{between},
 and then markers with fixed differences between any two groups are idenfitied.
}
\seealso{
\code{\link{segregating}}, \code{\link{fixed.diffs}}
}

