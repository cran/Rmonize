% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/02-harmo_process_harmonization.R
\name{is_dataschema}
\alias{is_dataschema}
\title{Test for a valid DataSchema object}
\usage{
is_dataschema(object)
}
\arguments{
\item{object}{A potential DataSchema object to be evaluated.}
}
\value{
A logical.
}
\description{
Tests if the input is a valid DataSchema object. This function mainly helps
validate input within other functions of the package but could be used to
check if an object is valid for use in a function.
}
\details{
A DataSchema is the list of core variables to generate across datasets and
related metadata. A DataSchema object is a list of data frames with elements
named 'Variables' (required) and 'Categories' (if any). The 'Variables'
element must contain at least the \code{name} column, and the 'Categories'
element must contain at least the \code{variable} and \code{name} columns to be usable
in any function. In 'Variables' the \code{name} column must also have unique
entries, and in 'Categories' the combination of \code{variable} and \code{name} columns
must also be unique.
}
\examples{
{

# use Rmonize_DEMO provided by the package

dataschema <- Rmonize_DEMO$`dataschema - final`
is_dataschema(dataschema)
is_dataschema(iris)

}

}
\seealso{
For a better assessment, please use \code{\link[=dataschema_evaluate]{dataschema_evaluate()}}.
}
