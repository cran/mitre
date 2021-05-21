## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
# library(mitre)

## ----example------------------------------------------------------------------
# shield.tactics[, c("id", "name")]

## ----example2-----------------------------------------------------------------
# hist(cve.nist$cvss3.score, 
#      main = "CVE risk distribution", xlab = "cvss3")

## ----example3-----------------------------------------------------------------
# mitrenet <- build_network(as_igraph = FALSE)
# table(mitrenet$nodes$type, mitrenet$nodes$group)

## ----example4-----------------------------------------------------------------
# table(mitrenet$edges$label)

