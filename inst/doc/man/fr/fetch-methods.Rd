\name{fetch-methods}
\docType{methods}
\alias{fetch-methods}
\alias{fetch,OraResult,numeric-method}
\alias{fetch,OraResult,missing-method}
\title{
Extraire les enregistrements d'une requête exécutée précédemment
}
\description{
Cette méthode est une implémentation directe de
   la fonction générique correspondante.
}
\section{Methods}{\describe{

\item{res}{
  an \code{OraResult} object.
  }
\item{n}{
  maximum number of records to retrieve per fetch.
  Use \code{n = -1} to retrieve all pending records.
  }
\item{\dots }{currently not used.}
}
}
\details{
L'implémentation \code{ROracle} extrait uniquement les enregistrements \code{n},
  et si l'élément \code{n} est manquant, elle renvoie tous les enregistrements.
}
\seealso{
  \code{\link{Oracle}},
  \code{\link[DBI]{dbConnect}},
  \code{\link[DBI]{dbSendQuery}},
  \code{\link[DBI]{dbGetQuery}},
  \code{\link[DBI]{dbClearResult}},
  \code{\link[DBI]{dbCommit}},
  \code{\link[DBI]{dbGetInfo}},
  \code{\link[DBI]{dbReadTable}}.
}
\examples{\dontrun{
drv <- dbDriver("Oracle")
con <- dbConnect(drv, "scott", "tiger")
res <- dbSendQuery(con, "select * from emp")

# we now fetch the first 10 records from the resultSet into a data.frame
data1 <- fetch(res, n = 10)   
dim(data1)

dbHasCompleted(res)

# let's get all remaining records
data2 <- fetch(res, n = -1)
}
}
\keyword{methods}
\keyword{interface}
\keyword{database}
