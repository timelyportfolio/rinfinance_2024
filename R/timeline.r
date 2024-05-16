# pak::pak("timelyportfolio/timelineR")
library(timelineR)

colorJS <- htmlwidgets::JS("function(d){return d.color;}")

timeline_df <- data.frame(
  date = as.Date(c(
    "2006-11-19",
    "2007-02-02",
    "2007-12-28",
    "2010-09-27",
    "2010-12-10",
    "2011-04-17",
    "2011-10-17",
    "2012-06-20",
    "2013-04-10",
    "2013-05-29",
    "2013-12-07",
    "2014-07-17",
    "2014-08-15",
    "2014-12-04",
    "2016-10-07",
    "2019-06-27",
    "2022-01-19",
    "2022-11-03"
  )),
  step = c(
    "quantmod",
    "PerformanceAnalytics",
    "xts",
    "d3",
    "first timelyportfolio blogpost",
    "R websockets",
    "knitr",
    "Shiny",
    "rCharts",
    "Vue",
    "React",
    "htmlwidgets",
    "dygraphs",
    "R V8",
    "arrow",
    "DuckDB 🤯",
    "webr 🤯",
    "Quarto"
  ),
  color = c(
    rep("#1f77b4",3),
    "#2ca02c",
    "#ccc",
    rep("#1f77b4",4),
    rep("#2ca02c",2),
    rep("#1f77b4",3),
    rep("#2ca02c",2),
    rep("#1f77b4",2)
  )
)

d3kit_timeline(
  timeline_df,
  timeFn = ~date,
  textFn = ~step,
  direction = "right",
  dotColor = colorJS,
  linkColor = colorJS,
  labelTextColor = "#FFF",
  labelBgColor = colorJS,
  width = 800,
  height = 600,
  labella = list(algorithm = "overlap")#, maxPos = 800,
  #margin = list(left = 20, right = 50, top = 20, bottom = 40)
)
