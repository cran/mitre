#' Returns a list of nodes and edges (neighbors) based on input node.
#'
#' @param node MITRE Standard Id
#' @param direction value should be: "from", "to" or "both"
#' @param mitrenet MITRE network built with this package
#' @param verbose default is FALSE
#'
#' @return list of nodes and edges
#' @export
getNodeNeighbors <- function(node = "T1104", direction = "both",
                             mitrenet = getLatestDataSet()[["mitrenet"]], verbose = FALSE) {
  # Collect input node
  nnodes <- mitrenet$nodes[mitrenet$nodes$id == node, ]
  eedges <- utils::head(mitrenet$edges, 0)

  if (direction %in% c("from", "both")) {
    # Find edges from node
    efrom <- mitrenet$edges[mitrenet$edges$from %in% node, ]
    # Collect destination nodes
    nfrom <- mitrenet$nodes[mitrenet$nodes$id %in% efrom$to, ]
    # Update Neighbors
    nnodes <- dplyr::bind_rows(nnodes, nfrom)
    eedges <- dplyr::bind_rows(eedges, efrom)
  }

  if (direction %in% c("to", "both")) {
    # Find edges where destination is node
    eto <- mitrenet$edges[mitrenet$edges$to %in% node, ]
    # Collect those nodes
    nto <- mitrenet$nodes[mitrenet$nodes$id %in% eto$from, ]
    # Update Neighbors
    nnodes <- dplyr::bind_rows(nnodes, nto)
    eedges <- dplyr::bind_rows(eedges, eto)
  }

  nnodes <- unique(nnodes)
  eedges <- unique(eedges)

  nn <- list(nodes = nnodes,
             edges = eedges)

  return(nn)
}
