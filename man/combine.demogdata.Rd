\name{combine.demogdata}
\alias{combine.demogdata}
\title{Combine two demogdata objects into one demogdata object}
\usage{combine.demogdata(obj1, obj2)
}


\description{Function to combine demogdata objects containing
different years but the same age structure into one demogdata
object. The standard use for this function will be combining
historical data with forecasts. The objects must be of the same type.}

\arguments{
\item{obj1}{First demogdata object (e.g., historical data).}
\item{obj2}{Second demogdata object (e.g., forecasts).}
}

\value{Object of class \dQuote{demogdata} with the following components:
\item{year}{Vector of years}
\item{age}{Vector of ages}
\item{rate}{Matrix of rates with with one age group per row and one column per year.}
\item{pop}{Matrix of populations in same form as \code{rate} and containing population numbers. This is only 
    produced when both objects contain a \code{pop} component.}
\item{type}{Type of object: \dQuote{mortality}, \dQuote{fertility} or \dQuote{migration}.}
\item{label}{Name of area from which the data are taken.}
}

\seealso{\code{\link{demogdata}}}

\author{Rob J Hyndman}

\examples{
fit <- fdm(fr.mort)
fcast <- forecast(fit, h=50)
france2 <- combine.demogdata(fr.mort,fcast)
plot(france2)
plot(life.expectancy(france2))
lines(rep(max(fr.mort$year)+0.5,2),c(0,100),lty=3)
}

\keyword{manip}
