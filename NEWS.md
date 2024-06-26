
# Rmonize 1.1.0 (release : 2024-05-01)

## Bug fixes and improvements

- To process the data during testing, the DataSchema and/or the Data
  Processing Elements and/or input datasets might not be available. To
  be able to perform testings on harmonization, an additional parameter
  `.debug` has been added
  <https://github.com/maelstrom-research/Rmonize/issues/56>

- The report function can now work when the code is indented in the Data
  Processing Elements.
  <https://github.com/maelstrom-research/Rmonize/issues/54>

- The function `show_harmo_error()` now allows the user to avoid showing
  warnings <https://github.com/maelstrom-research/Rmonize/issues/52>

## deprecated functions

To avoid confusion with help(function), the function `Rmonize_help()`
has been renamed `Rmonize_website()`.

## Dependency changes

- set a minimum dplyr dependence to avoid bugs

# Rmonize 1.0.1

Bug corrections and enhancements after testing with real data.

## Bug fixes and improvements

### Improvement in handling pooled data

The functions `harmo_process()`, `pool_harmonized_dataset_create()`,
`harmonized_dossier_create()`, `harmonized_dossier_evaluate()`,
`harmonized_dossier_summarize()`, `harmonized_dossier_visualize()` share
the same parameter “harmonized_col_dataset” which is (if exists) the
name of the column referring the input dataset names. If this column
exists and is declared by the user, this will be used across the
pipeline as a grouping/separating variable. By default, the name of each
dataset will be used instead.

rename DEMO_file_harmo into Rmonize_DEMO and update examples

suppress the parameter overwrite = TRUE in the functions xxx_visualize()

- <https://github.com/maelstrom-research/Rmonize/issues/38>

in visual reports, void confusing changes in color scheme in visual
reports.

- <https://github.com/maelstrom-research/Rmonize/issues/37>

Histograms for date variables display valid ranges.

- <https://github.com/maelstrom-research/Rmonize/issues/31>

in reports, change % NA as proportion in reports.

- <https://github.com/maelstrom-research/Rmonize/issues/29>

`harmonized_dossier_visualize()` report shows variable labels in the
same language.

- <https://github.com/maelstrom-research/Rmonize/issues/28>

put id_creation in script and in rule in dpe (as in direct_mapping)

- <https://github.com/maelstrom-research/Rmonize/issues/27>

Allow special characters in names of datasets and data_dicts

- <https://github.com/maelstrom-research/Rmonize/issues/23>

In visual reports, the bar plot only appears when there are multiple
missing value types, otherwise only the pie chart is shown.

- <https://github.com/maelstrom-research/Rmonize/issues/22>

enhance harmonized_dossier_visualize() output

- <https://github.com/maelstrom-research/Rmonize/issues/17>

enhance `show_harmo_error()` output

- <https://github.com/maelstrom-research/Rmonize/issues/5>

in reports, all of the percentages are now included under “Other values
(non categorical)”, which gives a single value.

- <https://github.com/maelstrom-research/Rmonize/issues/4>

Function recode with special character is possible now

# Rmonize 1.0.0

Functions to support rigorous retrospective data harmonization
processing, evaluation, and documentation across datasets in a dossier
based on Maelstrom Research guidelines. The package includes the core
functions to evaluate and format the main inputs that define the
harmonization process, apply specified processing rules to generate
harmonized data, diagnose processing errors, and summarize and evaluate
harmonized outputs.

This is still a work in progress, so please let us know if you used a
function before and is not working any longer.

## Helper functions and objects

- `Rmonize_help()` Call the help center for full documentation
- `dowload_templates()` Call the help center to the download template
  page
- `Rmonize_DEMO` Built-in material allowing the user to test the package
  with demo data

## Assess and manipulate input files

- `as_data_proc_elem()` Validate and coerce any object as a Data
  Processing Elements
- `as_dataschema()`, `as_dataschema_mlstr()` Validate and coerce any
  object as the DataSchema
- `as_harmonized_dossier()` Validate and coerce any object as an
  harmonized dossier
- `dataschema_extract()` Extract and create the DataSchema from a data
  processing elements

## Data processing

- `harmo_process()` Generate harmonized dataset(s) and annotated Data
  Processing Elements. This function internally runs other functions,
  which are :

- `harmo_parse_process_rule()`,
  `harmo_process_add_variable()`,`harmo_process_case_when()`,
  `harmo_process_direct_mapping()`,`harmo_process_id_creation()`,
  `harmo_process_impossible()`,`harmo_process_merge_variable()`,
  `harmo_process_operation()`,`harmo_process_other()`,
  `harmo_process_paste()`,`harmo_process_recode()`,
  `harmo_process_rename()`,`harmo_process_undetermined()`

- `pooled_harmonized_dataset_create()` Generate the pooled dataset from
  harmonized datasets in a dossier

## Evaluation of the harmonization process

- `show_harmo_error()` Generate a summary of the annotated Data
  Processing Elements
- `data_proc_elem_evaluate()`,`dataschema_evaluate()`,
  `harmonized_dossier_evaluate()`,`harmonized_dossier_summarize()`,
  `harmonized_dossier_visualize()` Generate a quality assessment reports
  and summary statistics of inputs and outputs.

## import from madshapR package:

- Shape and prepare input (datasets and data dictionaries) :

`as_data_dict()`,`is_data_dict()`,
`as_data_dict_mlstr()`,`is_data_dict_mlstr()`,
`as_dataset()`,`is_dataset()`, `as_dossier()`,`is_dossier()`,
`as_taxonomy()`

- Extract and manipulate information from input :

`data_extract()`,`data_dict_extract()`,
`data_dict_apply()`,`dataset_zap_data_dict()`,`dossier_create()`
`valueType_adjust()`

- Assess input data :

`dataset_evaluate()`, `data_dict_evaluate()`,`dossier_evaluate()`,
`dataset_summarize()`,`dossier_summarize()`

- Visualize input data :

`bookdown_template()`,`bookdown_render()`,`bookdown_open()`,
`dataset_visualize()`
