#' Validates a workflow for submission
#'
#'
#' @param WDL Local path to the wdl file describing the workflow. (Required)
#' @param allInputs Local path to the json containing ALL the inputs the parameters to use with the workflow - if a batch and parameters json are present they must first be combined. (Optional)
#' @return Returns the response from the API post which includes the workflow ID that you'll need to monitor the job.
#' @author Amy Paguirigan
#' @details
#' Requires valid Cromwell URL to be set in the environment.
#' @examples
#' TBD
#' @export
womtoolValidate <-
  function(WDL, allInputs=NULL) {
    if("" %in% Sys.getenv("CROMWELLURL")) {
      stop("CROMWELLURL is not set.")
    } else
      print("Validating a workflow for Cromwell.")

    bodyList <- list(workflowSource = httr::upload_file(WDL))
    if(is.null(allInputs) == F) bodyList <- c(bodyList, workflowInputs = list(httr::upload_file(allInputs)))

    cromDat <-
      httr::POST(
        url = paste0(Sys.getenv("CROMWELLURL"), "/api/womtool/v1/describe"),
        body = bodyList,
        encode = "multipart"
      )
    cromResponse <-httr::content(cromDat)
    return(cromResponse)
  }