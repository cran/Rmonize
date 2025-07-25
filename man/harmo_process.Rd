% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/02-harmo_process_harmonization.R
\name{harmo_process}
\alias{harmo_process}
\title{Generate harmonized dataset(s) and associated metadata}
\usage{
harmo_process(
  object,
  dataschema = attributes(object)$`Rmonize::DataSchema`,
  data_proc_elem = attributes(object)$`Rmonize::Data Processing Elements`,
  harmonized_col_dataset = attributes(object)$`Rmonize::harmonized_col_dataset`,
  harmonized_col_id = attributes(object)$`Rmonize::harmonized_col_id`,
  .debug = FALSE
)
}
\arguments{
\item{object}{Data frame(s) or list of data frame(s) containing input
dataset(s).}

\item{dataschema}{A DataSchema object.}

\item{data_proc_elem}{A Data Processing Elements object.}

\item{harmonized_col_dataset}{A character string identifying the column
to use for dataset names.}

\item{harmonized_col_id}{A character string identifying the name of the
column present in every dataset to use as a participant identifier.}

\item{.debug}{Allow user to test the inputs before processing harmonization.}
}
\value{
A list of data frame(s) containing harmonized dataset(s).
The DataSchema and Data Processing Elements are preserved as attributes of
the harmonized dossier.
}
\description{
Reads a DataSchema and Data Processing Elements to generate a
harmonized dossier from input dataset(s) in a dossier and associated
metadata. The function
has one argument that can optionally be declared by the user
(\code{unique_col_dataset}). It refers to the columns which contains name of
each harmonized dataset. These two columns are added to ensure that there
is always a unique entity identifier when datasets are pooled.
}
\details{
A dossier is a named list containing one or more data frames, which are
input datasets. The name of each data frame in the dossier will be used as
the name of the associated harmonized dataset produced by \code{\link[=harmo_process]{harmo_process()}}.

A DataSchema is the list of core variables to generate across datasets and
related metadata. A DataSchema object is a list of data frames with elements
named 'Variables' (required) and 'Categories' (if any). The 'Variables'
element must contain at least the \code{name} column, and the 'Categories'
element must contain at least the \code{variable} and \code{name} columns to be usable
in any function. In 'Variables' the \code{name} column must also have unique
entries, and in 'Categories' the combination of \code{variable} and \code{name} columns
must also be unique.

The Data Processing Elements specifies the input elements and processing algorithms
to generate harmonized variables in the DataSchema formats. It is also
contains metadata used to generate documentation of the processing.
A Data Processing Elements object is a data frame with specific columns
used in data processing: \code{dataschema_variable}, \code{input_dataset},
\code{input_variables}, \code{Mlstr_harmo::rule_category} and \code{Mlstr_harmo::algorithm}.
To initiate processing, the first entry must be the creation of a harmonized
primary identifier variable (e.g., participant unique ID).
}
\examples{
\donttest{
# Use Rmonize_examples to run examples.

library(dplyr)
library(stringr)
library(lubridate)

# Perform data processing
dossier <- Rmonize_examples[str_detect(names(Rmonize_examples),"input_dataset_study")]
names(dossier) <- str_remove(names(dossier), "input_")
dataschema <- Rmonize_examples$`DataSchema`
data_proc_elem <- Rmonize_examples$`Data_Processing_Elements_no_errors`

harmonized_dossier <- harmo_process(
  dossier,
  dataschema,
  data_proc_elem,
  harmonized_col_dataset = 'adm_study_id')
  
glimpse(harmonized_dossier$dataset_study1)
}

}
