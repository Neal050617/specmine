\name{smoothing_interpolation}
\alias{smoothing_interpolation}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Smoothing interpolation
}
\description{
  Performs smoothing interpolation according to a specific method.
}
\usage{
smoothing_interpolation(dataset, method = "bin", 
reducing.factor = 2, x.axis = NULL, p.order = 3, 
window = 11, deriv = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dataset}{
  list representing the dataset from a metabolomics experiment.
}
  \item{method}{
  string specifying the smoothing method. The three possible methods are: "bin", "loess" and "savitzky.golay".
}
  \item{reducing.factor}{
  numeric value indicating the reducing factor for bin method.
}
  \item{x.axis}{
  numeric vector representing the new x-axis for loess method.
}
  \item{p.order}{
  numeric value representing the polynomial order for savitzky-golay method. 
  }
  \item{window}{
  numeric value indicating the size of the window for savitzky-golay method. (must be an odd number)
  }
  \item{deriv}{
  numeric value indicating the differentiation order for savitzky-golay method. 
  }
}

\value{
  Returns the dataset with the spectra smoothed.
}

\examples{
  ## Example of smoothing the spectra from dataset
  data(cassavaPPD)
  dataset.smoothed = smoothing_interpolation(cassavaPPD, method = "bin", 
		     reducing.factor = 2)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ smoothing }
\keyword{ bin }% __ONLY ONE__ keyword per line
\keyword{ loess }
\keyword{ savitzky-golay }
