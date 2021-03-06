\name{fetch-methods}
\docType{methods}
\alias{fetch-methods}
\alias{fetch,OraResult,numeric-method}
\alias{fetch,OraResult,missing-method}
\title{
以前実行された問合せからのレコードのフェッチ
}
\description{
このメソッドは対応する汎用関数の直接的な実装です。
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
\code{ROracle}の実装は\code{n}レコードのみを取得し、\code{n}が欠落している場合はすべてのレコードを返します。
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
