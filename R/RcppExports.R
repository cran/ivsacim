# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' This is the main function to compute the estimator in C++
#' @param time censored event time
#' @param event event indicator
#' @param stime unique sorted noncensored event time
#' @param Z the instrument
#' @param Z_c centered IV
#' @param D_status treatment process at each noncensored event time
#' @param D_status_c centered treatment process at each noncensored event time
#' @param Z_model_mat bread matrix from modeling IV
#' @param eps_1 influence function from modeling IV
#' @param D_model_mat bread matrix from modeling treatment
#' @param eps_2 influence function from modeling treatment
#' @param weights optional weights
#' @keywords internal
#' @export
invalidivsacim_est <- function(time, event, stime, Z, Z_c, D_status, D_status_c, Z_model_mat, eps_1, D_model_mat, eps_2, weights) {
    .Call(`_ivsacim_invalidivsacim_est`, time, event, stime, Z, Z_c, D_status, D_status_c, Z_model_mat, eps_1, D_model_mat, eps_2, weights)
}

#' This is the main function to compute the estimator in C++
#' @param time censored event time
#' @param event event indicator
#' @param stime unique sorted noncensored event time
#' @param Zc centered IV
#' @param D_status treatment process at each noncensored event time
#' @param eps_1 influence function from modeling IV
#' @param Zc_dot bread matrix from modeling IV
#' @param weights optional weights
#' @keywords internal
#' @export
ivsacim_est <- function(time, event, stime, Zc, D_status, eps_1, Zc_dot, weights) {
    .Call(`_ivsacim_ivsacim_est`, time, event, stime, Zc, D_status, eps_1, Zc_dot, weights)
}

