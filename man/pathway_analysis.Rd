\name{pathway_analysis}
\alias{pathway_analysis}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Creates the metabolic pathway wanted. If any of the given compounds is present in the pathway, it is coloured differently.
}
\description{
The pathway created contains the compounds, reactions and other paths that it connects to as nodes.

The compounds given in \code{compounds} are colored in blue, while the rest of the compounds are colored in grey.

The other paths that it may connect to are colored in orange.

Reversive reactions are colored in green and the irreversible ones in red.
}
\usage{
pathway_analysis(compounds, pathway,
                nodeNames="kegg", nodeTooltip=F,
                map.zoom=F, map.layout="preset", map.width=NULL, map.height=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{compounds}{Vector of compounds of interest.}
  \item{pathway}{KEGG code (e.g., "hsa00010") of the path wanted.}
  \item{nodeNames}{How the nodes should be named. If "kegg", nodes are named with kegg codes. If "names", nodes are named with the common names.}
  \item{nodeTooltip}{If a tooltip should appear when hovering a node.}
  \item{map.zoom}{If the map should have the zoom in and out option.}
  \item{map.layout}{Layout of the map, available values are the ones of cytoscape ("breadthfirst", "preset", "cose", ...)}
  \item{map.width}{Width of the map, in percentage}
  \item{map.height}{Width of the map, in px (e.g. "500px")}
}
\value{
Shows the pathway created.
}
\examples{
##cpds=c("HMDB0000042", "HMDB0000050", "HMDB0000452", "HMDB0001851", "HMDB0001964", "HMDB0000055",
##       "HMDB0000094", "HMDB0000092", "HMDB0000174", "HMDB0000639", "HMDB0000500", "HMDB0002092",
##       "HMDB0000176", "HMDB0000744", "HMDB0000223", "HMDB0000239", "HMDB0001545", "HMDB0001431",
##       "HMDB0001257", "HMDB0000254", "HMDB0000254", "HMDB0000258", "HMDB0002085", "HMDB0000975",
##       "HMDB0000300")
##compounds=convert_hmdb_to_kegg(cpds)
##pathway_analysis(compounds, "mus00750", nodeNames="names", map.layout="preset")
}
