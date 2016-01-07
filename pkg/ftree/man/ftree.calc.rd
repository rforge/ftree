\name{ftree.calc}
\alias{ftree.calc}

\title{ Fault Tree Calculation }

\description{ftree.calc performs gate calculations from bottom to top of fault tree.
}

\usage{
ftree.calc(DF) 
}

\arguments{
\item{DF}{ A fault tree dataframe such as returned from ftree.make or related add... functions.}
}

\value{
Returns a dataframe containing 19 columns for holding data, results, and connection information.
}

\references{
  Nicholls, David [Editor] (2005) System Reliability Toolkit  Reliability information Analysis 
  Center
  
  O'Connor, Patrick D.T. (1991) Practical Reliability Engineering  John Wiley & Sons
  
  Vesely, W.E., Goldberg, F.F., Roberts, N.H., Haasl, D.F. (1981)  Fault Tree Handbook
  U.S.  Nuclear Regulatory Commission 
  
  Vesely, W.E., Stamatelato, M., Dugan, J., Fragola, J., Minarick, J., Railsback, J. (2002)
  Fault Tree Handbook with Aerospace Applications   NASA
  
  Doelp, L.C., Lee, G.K., Linney, R.E., Ormsby R.W. (1984) Quantitative fault tree analysis: Gate-by-gate method Plant/Operations Progress
Volume 3, Issue 4 American Institute of Chemical Engineers
}

\examples{
mytree <-ftree.make(type="or")
mytree <- addActive(mytree,  at=1, mttf=3, mttr=12/8760,name="pump failure")
mytree <- ftree.calc(mytree)
}

\keyword{ logic, risk, failure }

