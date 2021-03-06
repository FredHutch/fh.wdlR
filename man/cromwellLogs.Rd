% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cromwellLogs.R
\name{cromwellLogs}
\alias{cromwellLogs}
\title{Gets logs for a workflow in Cromwell}
\usage{
cromwellLogs(workflow_id)
}
\arguments{
\item{workflow_id}{Unique workflow id of the job.}
}
\value{
Returns the response from the API post
}
\description{
Gets logs for a workflow in Cromwell
}
\details{
Requires valid Cromwell server URL to be set in the environment. (use \code{setCromwellURL()})
}
\author{
Amy Paguirigan
}
