% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/womtoolValidate.R
\name{womtoolValidate}
\alias{womtoolValidate}
\title{Validates a workflow for submission}
\usage{
womtoolValidate(
  WDL,
  allInputs = NULL,
  cromURL = Sys.getenv("CROMWELLURL", unset = "needsURL")
)
}
\arguments{
\item{WDL}{Local path to the wdl file describing the workflow. (Required)}

\item{allInputs}{Local path to the json containing ALL the inputs the parameters to use with the workflow - if a batch and parameters json are present they must first be combined. (Optional)}

\item{cromURL}{The full string of the Cromwell URL to query if not using this locally (e.g. http://gizmog10:8000). (Optional)}
}
\value{
Returns the response from the API post which includes the workflow ID that you'll need to monitor the job.
}
\description{
Validates a workflow for submission
}
\details{
Requires valid Cromwell server URL to be set in the environment, or the use
of the cromURL param if you want to specify upon call the URL to use. (use \code{setCromwellURL()})
}
\examples{
TBD
}
\author{
Amy Paguirigan
}
