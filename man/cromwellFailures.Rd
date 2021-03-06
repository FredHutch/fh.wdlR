% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cromwellFailures.R
\name{cromwellFailures}
\alias{cromwellFailures}
\title{Pull metadata for the failed calls made in a Cromwell workflow job}
\usage{
cromwellFailures(
  workflow_id,
  cromURL = Sys.getenv("CROMWELLURL", unset = "needsURL")
)
}
\arguments{
\item{workflow_id}{The workflow ID to return call failure metadata for.}

\item{cromURL}{The full string of the Cromwell URL to query if not using this locally (e.g. http://gizmog10:8000). (Optional)}
}
\value{
Returns a long form data frame of metadata on failed calls in a workflow.
}
\description{
Gets info about failed calls for a specific workflow
}
\details{
Requires valid Cromwell server URL to be set in the environment, or the use
of the cromURL param if you want to specify upon call the URL to use. (use \code{setCromwellURL()})
}
\examples{
## Request what jobs have been submitted to your Cromwell instance in the past 7 days.
recentJobs <- cromwellJobs(days = 7)
## Request workflow metadata for a specific job that was run in your Cromwell instance.
thisWorkflowID <- recentJobs$workflow_id[1]
failsMeta <- cromwellFailures(workflow_id = thisWorkflowID)
}
\author{
Amy Paguirigan
}
