# log ---------------------------------------------------------------------

log_fun <- function(msg, ...) {
  # flog.appender(appender.console())
  flog.debug(msg, ...)
}

log_time <- function(label, proc) {
  log_fun("proc_time start %s...", label)
  proc_time <- system.time(eval(proc))
  log_fun("proc_time stop %s: %s", label, ".")
  proc_time_string <- paste(collapse = " ", capture.output(proc_time))
  log_fun("proc_time summary %s: %s", label, proc_time_string)
  invisible(NULL)
}
# log_time("modTimeInterval", {Sys.sleep(1)})

log_message <- function(msg, ..., label = "Generic:", env = parent.frame()) {
  # session <- get("session", envir = env)
  msg_labeled <- paste(label, msg)
  log_fun(msg_labeled, ...)
}
