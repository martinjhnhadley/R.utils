%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  withOptions.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{withOptions}
\alias{withOptions}


\title{Evaluate an R expression with options set temporarily}

\description{
 Evaluate an R expression with options set temporarily.
}

\usage{
withOptions(expr, ..., args=list(), substitute=TRUE, envir=parent.frame())
}

\arguments{
  \item{expr}{The R expression to be evaluated.}
  \item{...}{Named options to be used.}
  \item{args}{(optional) Additional named options specified as a named \code{\link[base]{list}}.}
  \item{substitute}{If \code{\link[base:logical]{TRUE}}, argument \code{expr} is
   \code{\link[base]{substitute}()}:ed, otherwise not.}
  \item{envir}{The \code{\link[base]{environment}} in which the expression should be evaluated.}
}

\value{
 Returns the results of the expression evaluated.
}

\details{
  Upon exit (also on errors), this function will reset \emph{all}
  options to the state of options available upon entry.  This means
  any options \emph{modified} but also those \emph{added} when
  evaluating \code{expr} will also be undone upon exit.
}

\author{Henrik Bengtsson}

\examples{
print(pi)

# Same, i.e. using default
withOptions({
  print(pi)
})

# Printing with two digits
withOptions({
  print(pi)
}, digits=2)

# Printing with two digits then with three more
withOptions({
  print(pi)
  withOptions({
    print(pi)
  }, digits=getOption("digits")+3)
}, digits=2)

# Still printing with the default
print(pi)
}

\seealso{
  Internally, \code{\link[base]{eval}}() is used to evaluate the expression.
  and \code{\link[base]{options}}() to set options.
}



\keyword{IO}
\keyword{programming}
