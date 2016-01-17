library(knitr)
options(scipen = 999)

#pdf.options(useDingbats = TRUE)

# knit_hooks$set(chunk = function(x, options) x) # do not wrap output in kframe
#
# syb_pdf = function(file, width, height) {
#   pdf(file, width = width, height = height, pointsize = 10, family = "PT Sans")
# }


opts_chunk$set(list(echo=FALSE,
                    eval=TRUE,
                    cache=FALSE,
                    warning=FALSE,
                    fig.caption = TRUE,
                    message=FALSE,
                    cache.path="~/fao_cache/regional15_web/",
                    dev="png",
                    results='asis')
)



trim_csv_names <- function(x){
  
  x <- gsub(" ", "", x)
  x <- gsub("/", "", x)
  x <- gsub("\\(", "", x)
  x <- gsub("\\)", "", x)
  x <- gsub("\\*", "", x)
  x <- gsub(",", "", x)
  x <- gsub("%", "", x)
  return(x)
}



# Why we have to short_text_ChartPage and short_text_ChartPage2 hooks etc......

knit_hooks$set(short_text_ChartPage = function(before, options, envir) {

  # challenge with hooks was that when eval=FALSE hook was still executed and produced error
  # Added the following line for each hook that stops the function IF there is FALSE in eval either
  # written directly or passed through the spread condition region gadget thing..

  if (options$short_text_ChartPage == FALSE) return()
  # Set fig size
  fig.width  =  3
  fig.height =  10
  if (!before) {
    return(paste0("<div class='jumbotron'> \n",
                  "<h1> ",spread_title," </h1> \n",
                  "<p>",short_text,"</p> \n",
                  "</div>"))
  }
})

knit_hooks$set(short_text_ChartPage2 = function(before, options, envir) {

  # challenge with hooks was that when eval=FALSE hook was still executed and produced error
  # Added the following line for each hook that stops the function IF there is FALSE in eval either
  # written directly or passed through the spread condition region gadget thing..

  if (options$short_text_ChartPage2 == FALSE) return()
  # Set fig size
  fig.width  =  3
  fig.height =  10
  if (!before) {
    return(paste0("<h1> ",spread_title," </h1> \n",
                  "<p>",short_text,"</p> \n"))
  }
})
#
#


knit_hooks$set(top_right_plot = function(before, options, envir) {

  if (options$top_right_plot == FALSE) return()

  if (before) {
    return("<hr>")
  } else {
    
    csv_name <- paste0(region_to_report,trim_csv_names(caption_text),".csv")
    write.csv(dat_plot, file=paste0(root.dir.web,"datasets/",csv_name))
    
    fig_name <- paste0(region_to_report,"_",trim_csv_names(caption_text),".pdf")
    ggsave(p, file=paste0(root.dir.web,"figs/",fig_name),width = top_right_plot_width, height= top_right_plot_height)
    # embedFonts(paste0(root.dir.web,"figs/",fig_name), outfile=paste0(root.dir.web,"figs/em_",fig_name))
    
    return(paste0("</br> <p class='caption'>Figure: ",caption_text,"</p> \n",
                  "<li><a href='{{ site.baseurl }}/datasets/",csv_name,"'>Download .csv</a></li>",
                  "<li><a href='{{ site.baseurl }}/figs/",fig_name,"'>Download .pdf</a></li>"))
  }
})
#
#
knit_hooks$set(top_right_minitable = function(before, options, envir) {

  if (options$top_right_minitable == FALSE) return()

  if (before) {
    return("<hr>")
  } else {

    # csv_name <- paste0(region_to_report,trim_csv_names(caption_text),".csv")
    # write.csv(tbl_data, file=paste0(root.dir.web,"datasets/",csv_name))
    # # 
    # return(paste0("<a href='{{ site.baseurl }}/datasets/",csv_name,"'>Download .csv</a>"))
    # return("<hr>")
    
  }
})
#
#
#
knit_hooks$set(left_plot = function(before, options, envir) {

  if (options$left_plot == FALSE) return()
  if (before) {
    return("<hr>")
  } else {
    
    csv_name <- paste0(region_to_report,trim_csv_names(caption_text),".csv")
    write.csv(dat_plot, file=paste0(root.dir.web,"datasets/",csv_name))
    
    fig_name <- paste0(region_to_report,"_",trim_csv_names(caption_text),".pdf")
    ggsave(p, file=paste0(root.dir.web,"figs/",fig_name),width = left_plot_width, height= left_plot_height)
    # embedFonts(paste0(root.dir.web,"figs/",fig_name), outfile=paste0(root.dir.web,"figs/em_",fig_name))
    
    return(paste0("</br> <p class='caption'>Figure: ",caption_text,"</p> \n",
                  "<li><a href='{{ site.baseurl }}/datasets/",csv_name,"'>Download .csv</a></li>",
                  "<li><a href='{{ site.baseurl }}/figs/",fig_name,"'>Download .pdf</a></li>"))
    
  }
})
#
knit_hooks$set(right_plot = function(before, options, envir) {

  if (options$right_plot == FALSE) return()
  if (before) {
    return("<hr>")
  } else {
    
    csv_name <- paste0(region_to_report,trim_csv_names(caption_text),".csv")
    write.csv(dat_plot, file=paste0(root.dir.web,"datasets/",csv_name))
    
    fig_name <- paste0(region_to_report,"_",trim_csv_names(caption_text),".pdf")
    ggsave(p, file=paste0(root.dir.web,"figs/",fig_name),width = right_plot_width, height= right_plot_height)
    # embedFonts(paste0(root.dir.web,"figs/",fig_name), outfile=paste0(root.dir.web,"figs/em_",fig_name))
    
    return(paste0("</br> <p class='caption'>Figure: ",caption_text,"</p> \n",
                  "<li><a href='{{ site.baseurl }}/datasets/",csv_name,"'>Download .csv</a></li>",
                  "<li><a href='{{ site.baseurl }}/figs/",fig_name,"'>Download .pdf</a></li>"))
  }
})
#
knit_hooks$set(bottom_plot = function(before, options, envir) {

  if (options$bottom_plot == FALSE) return()
  if (before) {
    return("<hr>")
  } else {
    
    csv_name <- paste0(region_to_report,trim_csv_names(caption_text),".csv")
    write.csv(dat_plot, file=paste0(root.dir.web,"datasets/",csv_name))
    
    fig_name <- paste0(region_to_report,"_",trim_csv_names(caption_text),".pdf")
    ggsave(p, file=paste0(root.dir.web,"figs/",fig_name),width = bottom_plot_width, height= bottom_plot_height)
    # embedFonts(paste0(root.dir.web,"figs/",fig_name), outfile=paste0(root.dir.web,"figs/em_",fig_name))
    
    return(paste0("</br> <p class='caption'>Figure: ",caption_text,"</p> \n",
                  "<li><a href='{{ site.baseurl }}/datasets/",csv_name,"'>Download .csv</a></li>",
                  "<li><a href='{{ site.baseurl }}/figs/",fig_name,"'>Download .pdf</a></li>"))
    # return(paste0("\\end{chart}} \n \\end{ChartPage}"))
  }
})
# caption_text <- "dfvksdfv askdhjcdhjas aslcd lasckjasdhbc"
#
# knit_hooks$set(bottom_plot2 = function(before, options, envir) {
#
#   if (options$bottom_plot2 == FALSE) return()
#   if (before) {
#     return("\\BottomChart{\\begin{chart} \n")
#   } else {
#
#     return(paste0("\\caption{",caption_text,"}","\\end{chart}} \n \\end{ChartPage2}"))
#     #return(paste0("\\end{chart}} \n \\end{ChartPage2}"))
#   }
# })
#
#
#
# # knit_hooks$set(end_chunk = function(before, options, envir) {
# #
# #      if (!before) {
# #        return("\\end{ChartPage}")
# #     }
# #
# # })
#
knit_hooks$set(map_plot = function(before, options, envir) {

  if (options$map_plot == FALSE) return()
  if (before) {
    return("<hr>")
  } else {
    
    csv_name <- paste0(region_to_report,trim_csv_names(caption_text),".csv")
    write.csv(cat_data, file=paste0(root.dir.web,"datasets/",csv_name))
    
    fig_name <- paste0(region_to_report,"_",trim_csv_names(caption_text),".pdf")
    ggsave(p, file=paste0(root.dir.web,"figs/",fig_name),width = map_plot_width, height= map_plot_height)
    # embedFonts(paste0(root.dir.web,"figs/",fig_name), outfile=paste0(root.dir.web,"figs/em_",fig_name))
    
    return(paste0("</br> <p class='caption'>Map: ",caption_text,"</p> \n",
                  "<li><a href='{{ site.baseurl }}/datasets/",csv_name,"'>Download .csv</a></li>",
                  "<li><a href='{{ site.baseurl }}/figs/",fig_name,"'>Download .pdf</a></li>"))
  }

})
#
# # remove all the kframe tags from all chunk outputs (as we are placing outputs in custom environments already!)
# local({
#   hook_chunk = knit_hooks$get('chunk')
#   knit_hooks$set(chunk = function(x, options) {
#     x = hook_chunk(x, options)
#     #if (options$results == 'asis' && !options$echo && options$fig.num == 0) {
#     if (options$results == 'asis') {
#       # remove all kframe's
#       gsub('\\\\(begin|end)\\{kframe\\}', '', x)
#     } else x
#   })
# })
#
#
#
#
#
#
#
#
#
#
#
#
#
#

top_right_plot_height <- 6
top_right_plot_width  <- 10

left_plot_height  <- 10
left_plot_width  <- 6

right_plot_height <- 10
right_plot_width <- 6

bottom_plot_height <- 6
bottom_plot_width  <- 10

# defaults
# map_plot_width   <- 15
# map_plot_height  <- 10


# RAF
if (region_to_report == "RAF") map_plot_width   <- 8
if (region_to_report == "RAF") map_plot_height  <- 10

# RAP
if (region_to_report == "RAP") map_plot_width   <- 11.5
if (region_to_report == "RAP") map_plot_height  <- 8

# REU
if (region_to_report == "REU") map_plot_width   <- 11.5
if (region_to_report == "REU") map_plot_height  <- 8

# RNE
if (region_to_report == "RNE") map_plot_width  <- 8
if (region_to_report == "RNE") map_plot_height  <- 10

# GLO
if (region_to_report == "GLO") map_plot_width   <- 11.5
if (region_to_report == "GLO") map_plot_height  <- 8

# COF
if (region_to_report == "COF") map_plot_width   <- 11.5
if (region_to_report == "COF") map_plot_height  <- 8



# LAC
if (region_to_report == "LAC") map.fig.width  <- 8
if (region_to_report == "LAC") map.fig.height  <- 12

# GLO
if (region_to_report == "GLO") map.fig.width  <- 12
if (region_to_report == "GLO") map.fig.height  <- 8

# COF
if (region_to_report == "COF") map.fig.width  <- 12
if (region_to_report == "COF") map.fig.height  <- 8
