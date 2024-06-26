% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/01-utils.R
\docType{data}
\name{Rmonize_DEMO}
\alias{Rmonize_DEMO}
\title{Demo objects to provide illustrative examples}
\format{
\subsection{\code{list}}{

A list with 13 elements (data frames and lists) providing example objects
for testing the package:

\describe{
\item{data_processing_elements - final}{Example Data Processing Elements}
\item{data_processing_elements - with error}{Example
Data Processing Elements containing errors}
\item{data_processing_elements - work in progress}{Example incomplete
Data processing Element}
\item{dataschema - final}{Example DataSchema}
\item{pooled_harmonized_dataset}{Example pooled harmonized dataset}
\item{harmonized_dossier}{Example of harmonized dossier}
\item{harmonized_dossier_summary}{Example harmonized variables summary}
\item{data_dict_MELBOURNE}{Example Data dictionary for Melbourne dataset}
\item{data_dict_PARIS}{Example Data dictionary for Paris dataset}
\item{data_dict_TOKYO}{Example Data dictionary for Tokyo dataset}
\item{dataset_MELBOURNE}{Example Dataset for Melbourne}
\item{dataset_PARIS}{Example Dataset for Paris}
\item{dataset_TOKYO}{Example Dataset for Tokyo}
...
}
}
}
\usage{
Rmonize_DEMO
}
\description{
Demo input datasets, input data dictionaries, DataSchema,
Data Processing Elements, and other objects to provide illustrative examples
of objects used by Rmonize.
}
\examples{
{

# use madshapR_DEMO provided by the package
library(dplyr)

glimpse(Rmonize_DEMO$`dataschema - final`)

}
}
\keyword{datasets}
