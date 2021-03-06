#' @export
#' @importFrom dplyr collect
collect.spark_jobj <- function(x, ...) {
  sdf_collect(x)
}

#' @export
#' @importFrom dplyr sample_n
#' @importFrom dbplyr add_op_single
sample_n.tbl_spark <- function(tbl,
                               size,
                               replace = FALSE,
                               weight = NULL,
                               .env = parent.frame()) {
  add_op_single("sample_n", .data = tbl, args = list(
    size = size,
    replace = replace,
    weight = weight,
    .env = .env
  ))
}

#' @export
#' @importFrom dplyr sample_frac
#' @importFrom dbplyr add_op_single
sample_frac.tbl_spark <- function(tbl,
                                  size = 1,
                                  replace = FALSE,
                                  weight = NULL,
                                  .env = parent.frame()) {
  add_op_single("sample_frac", .data = tbl, args = list(
    size = size,
    replace = replace,
    weight = weight,
    .env = .env
  ))
}

#' @export
#' @importFrom dplyr slice_
slice_.tbl_spark <- function(x, ...) {
  stop("Slice is not supported in this version of sparklyr")
}
