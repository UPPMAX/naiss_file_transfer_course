#!/bin/env Rscript
#
# The goal of this script is to collect all videos
#


# Must run from root folder
root_folder_name <- getwd()
if (stringr::str_detect(root_folder_name, "/scripts$")) {
  root_folder_name <- stringr::str_remove(root_folder_name, "/scripts$")
}

sessions_folder_name <- paste0(root_folder_name, "/docs/sessions")

session_filenames <- list.files(path = sessions_folder_name, pattern = "*.md", recursive = TRUE, full.names = TRUE)
testthat::expect_true(length(session_filenames) > 0)

#' Extract all videos as a table
extract_videos <- function(filename) {
  text <- readr::read_lines(filename)
  title_line <- stringr::str_subset(text, "^# .*")
  testthat::expect_equal(1, length(title_line))
  title <- stringr::str_match(title_line, "# (.*)")[, 2]
  video_lines <- stringr::str_subset(text, "youtu\\.be")
  cluster_and_url <- stringr::str_match(video_lines, "([A-Z][A-Za-z]+).*(https://youtu.be/.*)\\)")
  cluster_names <- cluster_and_url[, 2]

  tibble::tibble(
    filename = filename,
    session = title,
    cluster = cluster_names,
    url = cluster_and_url[, 3]
  )
}

# Create one table
list_of_tables <- list()

for (i in seq_along(session_filenames)) {
  filename <- session_filenames[i]

  t <- extract_videos(filename = filename)

  if (stringr::str_detect(filename, "cluster2cluster")) {
    t$cluster <- "Tetralith to Rackham"
  }
  if (stringr::str_detect(filename, "/scp/")) {
    t$cluster <- "Tetralith"
  }
  if (stringr::str_detect(filename, "/sftp/")) {
    t$cluster <- "Tetralith"
  }
  if (stringr::str_detect(filename, "/transfer_tips/")) {
    t$cluster <- "Tetralith"
  }

  if (length(t$cluster) > 0) {
   testthat::expect_equal(0, sum(stringr::str_count(t$cluster, "Video")))
  }

  list_of_tables[[i]] <- t
}

t <- dplyr::bind_rows(list_of_tables)

# The path will be 'docs/videos.md'
t$rel_path <- stringr::str_match(t$filename, ".*/docs/(.*)")[, 2]
t$session_link <- paste0("[", t$session, "](", t$rel_path, ")")
t$video_link <- paste0("[", "YouTube video", "](", t$url, ")")

knitr::kable(t |> dplyr::select(session_link, cluster, video_link))

