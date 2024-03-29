% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ivsacim.R
\name{ivsacim}
\alias{ivsacim}
\title{Fitting a Cumulative Intensity Model for Exposure Effects with Instrumental Variables}
\usage{
ivsacim(
  time,
  event,
  instrument,
  IV_valid = TRUE,
  treatment_init,
  treatment_shift_time = NULL,
  max_time = NULL,
  max_time_bet = NULL,
  n_sim = 0,
  weights = NULL
)
}
\arguments{
\item{time}{the censored event time}

\item{event}{event indicator}

\item{instrument}{the instrumental variable}

\item{IV_valid}{whether assuming IV satisfies the exclusion restriction}

\item{treatment_init}{the initial treatment assignment}

\item{treatment_shift_time}{the shift time of each subject, if no shift for a subject, set as 0}

\item{max_time}{the max time that we threshold for nonconstant effect}

\item{max_time_bet}{the max time that we threshold for constant effect}

\item{n_sim}{the number of resampling, set as 0 if no resampling is needed}

\item{weights}{optional weights used in the estimating equation}
}
\value{
ivsacim returns an object of class "ivsacim".
An object of class "ivsacim" is a list containing the following components:
\item{stime}{an estimate of the baseline hazards function}
\item{dB_D}{an estimate of the increment of the treatment effect}
\item{B_D}{an estimate of the treatment effect}
\item{beta_D}{an estimate of the constant treatment effect}
\item{B_D_se}{an estimate of the variance covariance matrix of B_D}
\item{beta_D_se}{an estimate of the constant treatment effect}
\item{by_prod}{a byproduct, that will used by other functions}
}
\description{
ivsacim is used to fit cumulative intensity models for exposure effects with instrumental variables.
}
\examples{
n = 400
event = rbinom(n, 1, 0.8)
IV = rbinom(n, 1, 0.5)
trt_init = IV
trt_shift = rep(0, n)
time = rexp(n)/(0.5 + trt_init * 0.2)
max_t = 3
max_t_bet = 3
n_sim = 0
fit <- ivsacim(time, event, IV, TRUE, trt_init, 
trt_shift, max_t, max_t_bet, n_sim)
}
