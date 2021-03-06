\name{OraDriver-class}
\docType{class}
\alias{OraDriver-class}
\title{
类 OraDriver
}
\description{
实现 R 数据库接口 (DBI) API 的 Oracle 驱动程序类。
}
\section{Generators}{
   The main generators are \code{\link[DBI]{dbDriver}} and 
   \code{\link{Oracle}}.
}
\section{Extends}{
Class \code{"DBIDriver"}, directly.
Class \code{"DBIObject"}, by class \code{"DBIDriver"}, distance 2.
}
\section{Methods}{
  \describe{
    \item{dbConnect}{\code{signature(drv = "OraDriver")}: ... }
    \item{dbGetInfo}{\code{signature(dbObj = "OraDriver")}: ... }
    \item{dbListConnections}{\code{signature(drv = "OraDriver")}: ... }
    \item{dbUnloadDriver}{\code{signature(drv = "OraDriver")}: ... }
    \item{summary}{\code{signature(object = "OraDriver")}: ... }
    \item{show}{\code{signature(object = "OraDriver")} }
  }
}
\seealso{
 DBI classes:
 \code{\link{OraConnection-class}}
 \code{\link{OraResult-class}}
}
\examples{\dontrun{
ora <- dbDriver("Oracle")
con <- dbConnect(ora, "scott", "tiger")
}
}
\keyword{database}
\keyword{interface}
\keyword{classes}
