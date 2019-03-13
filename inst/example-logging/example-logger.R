library(aktools)
# With this library is possible to create different log destinations and switch
# between them easily.

# it allows also to see the timestamp when it occurred

# flog.appender(appender.file('quiet.log'))
flog.appender(appender.console())


# It has different level of severity

flog.trace("message") # silent now
flog.debug("message") # silent now
flog.info("message")
flog.warn("message")
flog.error("message")
flog.fatal("message")

# And set the severity threashold over which log really
flog.threshold("debug")

flog.trace("message") # silent now
flog.debug("message") # ALOUD now
flog.info("message")
flog.warn("message")
flog.error("message")
flog.fatal("message")

flog.threshold("info") # default behaviour restored

# use a named appender ----------------------------------------------------

flog.appender(appender.console(), 'quiet')
flog.warn("pippo", name = 'quiet')

# use package function ----------------------------------------------------

flog.threshold("debug")

log_time(label = "waiting 1 sec.", proc = {
  Sys.sleep(1)
})



# file --------------------------------------------------------------------

flog.appender(appender.tee("./pippo.log"))


# It has different level of severity

flog.trace("message") # silent now
flog.debug("message") # silent now
flog.info("message")
flog.warn("message")
flog.error("message")
flog.fatal("message")

